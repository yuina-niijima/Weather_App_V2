import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app_v2/component/location_error_dialog.dart';
import 'package:weather_app_v2/component/weather_detail_modal.dart';
import 'package:weather_app_v2/page/prefecture_screen.dart';
import 'package:weather_app_v2/view_model/main_home_page_view_model.dart';

class MainHomePage extends HookConsumerWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(mainHomeViewModelProvider.notifier);

    useEffect(() {
      Future.microtask(() => viewModel.requestLocationPermission());
      return null;
    }, const []);
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Image.asset(
                  'assets/MainWeather.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 50),
                AppButton(
                  label: '都道府県選択',
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PrefectureScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                AppButton(
                  label: '現在地の天気を見る',
                  backgroundColor: Colors.orange,
                  onPressed: () async {
                    /// 現在地の位置情報を取得し、成功時は天気詳細を表示、失敗時はエラーダイアログを表示する
                    try {
                      // 位置情報を取る（失敗したら catch へ飛ぶ）
                      final geoCordinate = await viewModel
                          .fetchCurrentGeoCordinate();

                      // 成功時のみ実行される
                      if (context.mounted) {
                        WeatherDetailModal.showWeatherModal(
                          context,
                          geoCordinate,
                        );
                      }
                    } catch (e) {
                      // 失敗した時だけダイアログを出す
                      if (context.mounted) {
                        showDialog(
                          context: context,
                          builder: (context) => const LocationErrorDialog(),
                        );
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ボタンclass
class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
  });
  final String label;
  final VoidCallback onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: Colors.white,
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

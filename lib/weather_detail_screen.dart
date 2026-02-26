import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app_v2/weather_detail_view_model.dart';

class WeatherDetailScreen extends ConsumerWidget {
  final String city;
  const WeatherDetailScreen({super.key, required this.city});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(weatherDetailViewModelProvider(city));

    return Scaffold(
      appBar: AppBar(title: Text('$cityの天気')),
      body: Center(
        child: state.when(
          loading: () => const CircularProgressIndicator(),
          error: (err, _) => _ErrorView(
            onRetry: () => ref.invalidate(weatherDetailViewModelProvider(city)),
          ),
          data: (weather) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://openweathermap.org/img/wn/${weather.icon}@4x.png',
                  width: 150,
                ),
                Text(
                  weather.description,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  '${weather.tempMax.toStringAsFixed(1)}°C / ${weather.tempMin.toStringAsFixed(1)}°C',
                  style: const TextStyle(fontSize: 24),
                ),
                Text('湿度: ${weather.humidity}%'),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final VoidCallback onRetry;
  const _ErrorView({required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.error_outline, size: 48, color: Colors.red),
        const Text('取得に失敗しました'),
        TextButton(onPressed: onRetry, child: const Text('リトライ')),
      ],
    );
  }
}

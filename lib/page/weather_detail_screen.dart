import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app_v2/model/location_data.dart';
import 'package:weather_app_v2/model/weather_data.dart';
import 'package:weather_app_v2/model/weather_exeption.dart';
import 'package:weather_app_v2/view_model/weather_detail_view_model.dart';

class WeatherDetailScreen extends ConsumerWidget {
  final LocationData location;
  const WeatherDetailScreen({super.key, required this.location});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = weatherDetailViewModelProvider(location);
    final cityName = location.cityName ?? '現在地';
    ref.listen(
      provider,
      (_, next) => next.whenOrNull(
        error: (err, _) {
          final message = err is WeatherException
              ? err.message
              : '予期せぬエラーが発生しました';

          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('エラー'),
              content: Text(message),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text('$cityNameの天気')),
      body: Center(
        child: ref
            .watch(provider)
            .when(
              loading: () => const CircularProgressIndicator(),
              error: (_, _) => TextButton(
                onPressed: () => ref.invalidate(provider),
                child: const Text('再試行'),
              ),
              data: (weather) => _WeatherContent(weather: weather),
            ),
      ),
    );
  }
}

class _WeatherContent extends StatelessWidget {
  final WeatherData weather;
  const _WeatherContent({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(weather.iconUrl, width: 150),
        Text(
          weather.description,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Text(
          '${weather.tempMax.displayValue} / ${weather.tempMin.displayValue}',
          style: const TextStyle(fontSize: 24),
        ),
        Text('湿度: ${weather.humidity}%'),
      ],
    );
  }
}

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'weather_data.dart';
import 'prefectures.dart';

part 'weather_provider.g.dart';

@riverpod
Dio dio(Ref ref) {
  return Dio(
    BaseOptions(
      baseUrl: 'https://api.openweathermap.org/data/2.5',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    ),
  );
}

@riverpod
Future<WeatherData> weather(Ref ref) async {
  final city = ref.watch(selectedPrefectureProvider);

  final dio = ref.watch(dioProvider);

  try {
    final response = await dio.get(
      '/weather',
      queryParameters: {
        'q': '$city,JP',
        'appid': '5ee6adacdb42b2c30c14f16918a80a6b',
        'units': 'metric',
        'lang': 'ja',
      },
    );

    final data = response.data;

    return WeatherData(
      description: data['weather'][0]['description'],
      icon: data['weather'][0]['icon'],
      tempMax: (data['main']['temp_max'] as num).toDouble(),
      tempMin: (data['main']['temp_min'] as num).toDouble(),
      humidity: data['main']['humidity'] as int,
    );
  } on DioException {
    return const WeatherData(
      description: '通信エラー',
      icon: '01d',
      tempMax: 0.0,
      tempMin: 0.0,
      humidity: 0,
    );
  }
}

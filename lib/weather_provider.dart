import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_v2/app_config.dart';
import 'weather_data.dart';

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
Future<WeatherData> fetchWeather(Ref ref, String city) async {
  final dio = ref.watch(dioProvider);

  final response = await dio.get(
    '/weather',
    queryParameters: {
      'q': '$city,JP',
      'appid': AppConfig.apiKey,
      'units': 'metric',
      'lang': 'ja',
    },
  );

  final fullData = WeatherDataResponse.fromJson(response.data);

  return WeatherData(
    description: fullData.weather[0].description,
    icon: fullData.weather[0].icon,
    tempMax: fullData.main.tempMax,
    tempMin: fullData.main.tempMin,
    humidity: fullData.main.humidity,
  );
}

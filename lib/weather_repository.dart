import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_v2/app_config.dart';
import 'package:weather_app_v2/dio.dart';
import 'package:weather_app_v2/weather_data.dart';

part 'weather_repository.g.dart';

class WeatherRepository {
  final Dio dio;
  WeatherRepository(this.dio);

  Future<WeatherData> fetchWeather(String city) async {
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
}

@riverpod
WeatherRepository weatherRepository(Ref ref) {
  return WeatherRepository(
    ref.watch(dioProvider),
  );
}

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_v2/constant/app_config.dart';
import 'package:weather_app_v2/model/weather_data.dart';
import 'package:weather_app_v2/model/weather_exeption.dart';
import 'package:weather_app_v2/repository/dio.dart';

part 'weather_repository.g.dart';

class WeatherRepository {
  final Dio dio;
  WeatherRepository(this.dio);

  // 都市名で取得
  Future<WeatherData> fetchWeather(String city) async {
    return _fetchWeatherData({'q': '$city,JP'});
  }

  // 緯度・経度で取得
  Future<WeatherData> fetchWeatherByCoordinates(double lat, double lon) async {
    return _fetchWeatherData({'lat': lat, 'lon': lon});
  }

  // 通信とデータ変換を一つのメソッドに集約
  Future<WeatherData> _fetchWeatherData(
    // Map<String, dynamic> で複数の情報を一つにまとめて、各関数の欲しいものを取ってくる
    Map<String, dynamic> searchOptions,
  ) async {
    try {
      final response = await dio.get(
        '/weather',
        queryParameters: {
          ...searchOptions,
          'appid': AppConfig.apiKey,
          'units': 'metric',
          'lang': 'ja',
        },
      );

      final fullData = WeatherDataResponse.fromJson(response.data);

      return WeatherData(
        description: fullData.weather[0].description,
        icon: fullData.weather[0].icon,
        tempMax: Temp(value: fullData.main.tempMax),
        tempMin: Temp(value: fullData.main.tempMin),
        humidity: fullData.main.humidity,
      );
    } on DioException catch (e) {
      throw _parseDioError(e);
    } catch (e) {
      throw UnknownException();
    }
  }

  // エラー解析
  WeatherException _parseDioError(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.connectionError) {
      return NetworkException();
    }
    // サーバー側の問題（500系）
    if (e.response?.statusCode != null && e.response!.statusCode! >= 500) {
      return ServerException();
    }
    // それ以外
    return UnknownException();
  }
}

@riverpod
WeatherRepository weatherRepository(Ref ref) {
  return WeatherRepository(
    ref.watch(dioProvider),
  );
}

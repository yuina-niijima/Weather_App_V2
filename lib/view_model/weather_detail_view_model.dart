import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_v2/model/location_data.dart';
import 'package:weather_app_v2/model/weather_data.dart';
import 'package:weather_app_v2/repository/weather_repository.dart';

part 'weather_detail_view_model.g.dart';

@riverpod
final class WeatherDetailViewModel extends _$WeatherDetailViewModel {
  @override
  FutureOr<CityWeatherData> build(LocationData location) async {
    final weatherData = await _fetchWeather(location);

    final displayCity = location is City
        ? location
        : City(name: location.getName());

    return CityWeatherData(
      city: displayCity,
      weatherData: weatherData,
    );
  }

  String get title {
    final cityName = state.value?.city.name ?? '現在地';
    return '$cityNameの天気';
  }

  Future<WeatherData> _fetchWeather(LocationData location) async {
    final repository = ref.read(weatherRepositoryProvider);
    return switch (location) {
      // 座標クラス（GeoCordinate）なら座標で叩く
      GeoCordinate(lat: double lat, lon: double lon) =>
        repository.fetchWeatherByCoordinates(lat, lon),

      // Cityクラスでも、緯度経度(lat, lon)を持っていれば、座標を優先して叩く
      City(lat: double lat?, lon: double lon?) =>
        repository.fetchWeatherByCoordinates(lat, lon),

      // 緯度経度がないCity（都道府県選択など）は、名前で叩く
      City(name: String cityName) => repository.fetchWeather(cityName),
    };
  }
}

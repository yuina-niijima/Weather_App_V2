import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_v2/model/location_data.dart';
import 'package:weather_app_v2/model/weather_data.dart';
import 'package:weather_app_v2/repository/location_repository.dart';
import 'package:weather_app_v2/repository/weather_repository.dart';

part 'weather_detail_view_model.g.dart';

@riverpod
final class WeatherDetailViewModel extends _$WeatherDetailViewModel {
  @override
  FutureOr<CityWeatherData> build(LocationData location) async {
    final weatherData = await _fetchWeather(location);
    final city = await _getCityFromLocation(location);

    return CityWeatherData(
      city: city,
      weatherData: weatherData,
    );
  }

  String get title {
    final cityName = state.value?.city.name ?? '現在地';
    return '$cityNameの天気';
  }

  /// LocationDataからCityを取得する
  Future<City> _getCityFromLocation(LocationData location) async {
    switch (location) {
      case GeoCordinate(lat: double lat, lon: double lon):
        final repository = ref.read(locationRepositoryProvider);

        return await repository.getCurrentLocationData(
          lat: lat,
          lon: lon,
        );

      case City(name: String cityName):
        return City(name: cityName);
    }
  }

  Future<WeatherData> _fetchWeather(LocationData location) async {
    final repository = ref.read(weatherRepositoryProvider);
    return switch (location) {
      // 座標クラス（GeoCordinate）なら座標で叩く
      GeoCordinate(lat: double lat, lon: double lon) =>
        repository.fetchWeatherByCoordinates(lat, lon),

      // 緯度経度がないCity（都道府県選択など）は、名前で叩く
      City(name: String cityName) => repository.fetchWeather(cityName),
    };
  }
}

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_v2/model/location_data.dart';
import 'package:weather_app_v2/model/weather_data.dart';
import 'package:weather_app_v2/repository/weather_repository.dart';

part 'weather_detail_view_model.g.dart';

@riverpod
final class WeatherDetailViewModel extends _$WeatherDetailViewModel {
  @override
  FutureOr<WeatherData> build(LocationData location) async {
    return _fetchWeather(location);
  }

  Future<WeatherData> _fetchWeather(LocationData location) async {
    final repository = ref.read(weatherRepositoryProvider);

    if (location.latitude == 0 && location.longitude == 0) {
      return repository.fetchWeather(location.cityName ?? '');
    }

    return repository.fetchWeatherByCoordinates(
      location.latitude,
      location.longitude,
    );
  }
}

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_v2/model/weather_data.dart';
import 'package:weather_app_v2/repository/weather_repository.dart';

part 'weather_detail_view_model.g.dart';

@riverpod
final class WeatherDetailViewModel extends _$WeatherDetailViewModel {
  @override
  FutureOr<WeatherData> build(String city) async {
    return _fetchWeather(city);
  }

  Future<WeatherData> _fetchWeather(String city) async {
    final repository = ref.watch(weatherRepositoryProvider);
    return repository.fetchWeather(city);
  }
}

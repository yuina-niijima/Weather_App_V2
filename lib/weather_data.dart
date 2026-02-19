import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_data.freezed.dart';
part 'weather_data.g.dart';

@freezed
abstract class WeatherData with _$WeatherData {
  const factory WeatherData({
    required String description,
    required String icon,
    required double tempMax,
    required double tempMin,
    required int humidity,
  }) = _WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);
}

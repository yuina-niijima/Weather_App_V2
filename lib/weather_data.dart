import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_data.freezed.dart';
part 'weather_data.g.dart';

@freezed
abstract class WeatherData with _$WeatherData {
  const factory WeatherData({
    required String description,
    required String icon,
    @JsonKey(name: 'temp_max') required double tempMax,
    @JsonKey(name: 'temp_min') required double tempMin,
    required int humidity,
  }) = _WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);
}

@freezed
abstract class WeatherDataResponse with _$WeatherDataResponse {
  const factory WeatherDataResponse({
    required String coord,
    required List<WeatherDetail> weather,
    required Main main,
  }) = _WeatherDataResponse;

  factory WeatherDataResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataResponseFromJson(json);
}

@freezed
abstract class Coord with _$Coord {
  const factory Coord({
    required double lon,
    required double lat,
  }) = _Coord;

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}

@freezed
abstract class WeatherDetail with _$WeatherDetail {
  const factory WeatherDetail({
    required String description,
    required String icon,
  }) = _WeatherDetail;

  factory WeatherDetail.fromJson(Map<String, dynamic> json) =>
      _$WeatherDetailFromJson(json);
}

@freezed
abstract class Main with _$Main {
  const factory Main({
    @JsonKey(name: 'temp_max') required double tempMax,
    @JsonKey(name: 'temp_min') required double tempMin,
    required int humidity,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

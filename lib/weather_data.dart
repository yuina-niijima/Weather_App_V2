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

class WeatherDataResponse {
  final Coord coord;
  final List<WeatherDetail> weather;
  final Main main;

  WeatherDataResponse({
    required this.coord,
    required this.weather,
    required this.main,
  });
}

class Coord {
  final double lon;
  final double lat;

  Coord({
    required this.lon,
    required this.lat,
  });
}

class WeatherDetail {
  final String description;
  final String icon;

  WeatherDetail({
    required this.description,
    required this.icon,
  });
}

class Main {
  final double tempMax;
  final double tempMin;
  final int humidity;

  Main({
    required this.tempMax,
    required this.tempMin,
    required this.humidity,
  });
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) => _WeatherData(
  description: json['description'] as String,
  icon: json['icon'] as String,
  tempMax: (json['temp_max'] as num).toDouble(),
  tempMin: (json['temp_min'] as num).toDouble(),
  humidity: (json['humidity'] as num).toInt(),
);

Map<String, dynamic> _$WeatherDataToJson(_WeatherData instance) =>
    <String, dynamic>{
      'description': instance.description,
      'icon': instance.icon,
      'temp_max': instance.tempMax,
      'temp_min': instance.tempMin,
      'humidity': instance.humidity,
    };

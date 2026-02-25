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

_WeatherDataResponse _$WeatherDataResponseFromJson(Map<String, dynamic> json) =>
    _WeatherDataResponse(
      coord: Coord.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherDataResponseToJson(
  _WeatherDataResponse instance,
) => <String, dynamic>{
  'coord': instance.coord,
  'weather': instance.weather,
  'main': instance.main,
};

_Coord _$CoordFromJson(Map<String, dynamic> json) => _Coord(
  lon: (json['lon'] as num).toDouble(),
  lat: (json['lat'] as num).toDouble(),
);

Map<String, dynamic> _$CoordToJson(_Coord instance) => <String, dynamic>{
  'lon': instance.lon,
  'lat': instance.lat,
};

_WeatherDetail _$WeatherDetailFromJson(Map<String, dynamic> json) =>
    _WeatherDetail(
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$WeatherDetailToJson(_WeatherDetail instance) =>
    <String, dynamic>{
      'description': instance.description,
      'icon': instance.icon,
    };

_Main _$MainFromJson(Map<String, dynamic> json) => _Main(
  tempMax: (json['temp_max'] as num).toDouble(),
  tempMin: (json['temp_min'] as num).toDouble(),
  humidity: (json['humidity'] as num).toInt(),
);

Map<String, dynamic> _$MainToJson(_Main instance) => <String, dynamic>{
  'temp_max': instance.tempMax,
  'temp_min': instance.tempMin,
  'humidity': instance.humidity,
};

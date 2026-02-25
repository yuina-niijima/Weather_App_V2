// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherData implements DiagnosticableTreeMixin {

 String get description; String get icon;@JsonKey(name: 'temp_max') double get tempMax;@JsonKey(name: 'temp_min') double get tempMin; int get humidity;
/// Create a copy of WeatherData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherDataCopyWith<WeatherData> get copyWith => _$WeatherDataCopyWithImpl<WeatherData>(this as WeatherData, _$identity);

  /// Serializes this WeatherData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherData'))
    ..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('tempMax', tempMax))..add(DiagnosticsProperty('tempMin', tempMin))..add(DiagnosticsProperty('humidity', humidity));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherData&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,icon,tempMax,tempMin,humidity);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherData(description: $description, icon: $icon, tempMax: $tempMax, tempMin: $tempMin, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class $WeatherDataCopyWith<$Res>  {
  factory $WeatherDataCopyWith(WeatherData value, $Res Function(WeatherData) _then) = _$WeatherDataCopyWithImpl;
@useResult
$Res call({
 String description, String icon,@JsonKey(name: 'temp_max') double tempMax,@JsonKey(name: 'temp_min') double tempMin, int humidity
});




}
/// @nodoc
class _$WeatherDataCopyWithImpl<$Res>
    implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(this._self, this._then);

  final WeatherData _self;
  final $Res Function(WeatherData) _then;

/// Create a copy of WeatherData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? icon = null,Object? tempMax = null,Object? tempMin = null,Object? humidity = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherData].
extension WeatherDataPatterns on WeatherData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherData value)  $default,){
final _that = this;
switch (_that) {
case _WeatherData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherData value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description,  String icon, @JsonKey(name: 'temp_max')  double tempMax, @JsonKey(name: 'temp_min')  double tempMin,  int humidity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherData() when $default != null:
return $default(_that.description,_that.icon,_that.tempMax,_that.tempMin,_that.humidity);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description,  String icon, @JsonKey(name: 'temp_max')  double tempMax, @JsonKey(name: 'temp_min')  double tempMin,  int humidity)  $default,) {final _that = this;
switch (_that) {
case _WeatherData():
return $default(_that.description,_that.icon,_that.tempMax,_that.tempMin,_that.humidity);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description,  String icon, @JsonKey(name: 'temp_max')  double tempMax, @JsonKey(name: 'temp_min')  double tempMin,  int humidity)?  $default,) {final _that = this;
switch (_that) {
case _WeatherData() when $default != null:
return $default(_that.description,_that.icon,_that.tempMax,_that.tempMin,_that.humidity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherData with DiagnosticableTreeMixin implements WeatherData {
  const _WeatherData({required this.description, required this.icon, @JsonKey(name: 'temp_max') required this.tempMax, @JsonKey(name: 'temp_min') required this.tempMin, required this.humidity});
  factory _WeatherData.fromJson(Map<String, dynamic> json) => _$WeatherDataFromJson(json);

@override final  String description;
@override final  String icon;
@override@JsonKey(name: 'temp_max') final  double tempMax;
@override@JsonKey(name: 'temp_min') final  double tempMin;
@override final  int humidity;

/// Create a copy of WeatherData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherDataCopyWith<_WeatherData> get copyWith => __$WeatherDataCopyWithImpl<_WeatherData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherDataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherData'))
    ..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('icon', icon))..add(DiagnosticsProperty('tempMax', tempMax))..add(DiagnosticsProperty('tempMin', tempMin))..add(DiagnosticsProperty('humidity', humidity));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherData&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,icon,tempMax,tempMin,humidity);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherData(description: $description, icon: $icon, tempMax: $tempMax, tempMin: $tempMin, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class _$WeatherDataCopyWith<$Res> implements $WeatherDataCopyWith<$Res> {
  factory _$WeatherDataCopyWith(_WeatherData value, $Res Function(_WeatherData) _then) = __$WeatherDataCopyWithImpl;
@override @useResult
$Res call({
 String description, String icon,@JsonKey(name: 'temp_max') double tempMax,@JsonKey(name: 'temp_min') double tempMin, int humidity
});




}
/// @nodoc
class __$WeatherDataCopyWithImpl<$Res>
    implements _$WeatherDataCopyWith<$Res> {
  __$WeatherDataCopyWithImpl(this._self, this._then);

  final _WeatherData _self;
  final $Res Function(_WeatherData) _then;

/// Create a copy of WeatherData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? icon = null,Object? tempMax = null,Object? tempMin = null,Object? humidity = null,}) {
  return _then(_WeatherData(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$WeatherDataResponse implements DiagnosticableTreeMixin {

 String get coord; List<WeatherDetail> get weather; Main get main;
/// Create a copy of WeatherDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherDataResponseCopyWith<WeatherDataResponse> get copyWith => _$WeatherDataResponseCopyWithImpl<WeatherDataResponse>(this as WeatherDataResponse, _$identity);

  /// Serializes this WeatherDataResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherDataResponse'))
    ..add(DiagnosticsProperty('coord', coord))..add(DiagnosticsProperty('weather', weather))..add(DiagnosticsProperty('main', main));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherDataResponse&&(identical(other.coord, coord) || other.coord == coord)&&const DeepCollectionEquality().equals(other.weather, weather)&&(identical(other.main, main) || other.main == main));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coord,const DeepCollectionEquality().hash(weather),main);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherDataResponse(coord: $coord, weather: $weather, main: $main)';
}


}

/// @nodoc
abstract mixin class $WeatherDataResponseCopyWith<$Res>  {
  factory $WeatherDataResponseCopyWith(WeatherDataResponse value, $Res Function(WeatherDataResponse) _then) = _$WeatherDataResponseCopyWithImpl;
@useResult
$Res call({
 String coord, List<WeatherDetail> weather, Main main
});


$MainCopyWith<$Res> get main;

}
/// @nodoc
class _$WeatherDataResponseCopyWithImpl<$Res>
    implements $WeatherDataResponseCopyWith<$Res> {
  _$WeatherDataResponseCopyWithImpl(this._self, this._then);

  final WeatherDataResponse _self;
  final $Res Function(WeatherDataResponse) _then;

/// Create a copy of WeatherDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coord = null,Object? weather = null,Object? main = null,}) {
  return _then(_self.copyWith(
coord: null == coord ? _self.coord : coord // ignore: cast_nullable_to_non_nullable
as String,weather: null == weather ? _self.weather : weather // ignore: cast_nullable_to_non_nullable
as List<WeatherDetail>,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as Main,
  ));
}
/// Create a copy of WeatherDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCopyWith<$Res> get main {
  
  return $MainCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}
}


/// Adds pattern-matching-related methods to [WeatherDataResponse].
extension WeatherDataResponsePatterns on WeatherDataResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherDataResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _WeatherDataResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherDataResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String coord,  List<WeatherDetail> weather,  Main main)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherDataResponse() when $default != null:
return $default(_that.coord,_that.weather,_that.main);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String coord,  List<WeatherDetail> weather,  Main main)  $default,) {final _that = this;
switch (_that) {
case _WeatherDataResponse():
return $default(_that.coord,_that.weather,_that.main);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String coord,  List<WeatherDetail> weather,  Main main)?  $default,) {final _that = this;
switch (_that) {
case _WeatherDataResponse() when $default != null:
return $default(_that.coord,_that.weather,_that.main);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherDataResponse with DiagnosticableTreeMixin implements WeatherDataResponse {
  const _WeatherDataResponse({required this.coord, required final  List<WeatherDetail> weather, required this.main}): _weather = weather;
  factory _WeatherDataResponse.fromJson(Map<String, dynamic> json) => _$WeatherDataResponseFromJson(json);

@override final  String coord;
 final  List<WeatherDetail> _weather;
@override List<WeatherDetail> get weather {
  if (_weather is EqualUnmodifiableListView) return _weather;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weather);
}

@override final  Main main;

/// Create a copy of WeatherDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherDataResponseCopyWith<_WeatherDataResponse> get copyWith => __$WeatherDataResponseCopyWithImpl<_WeatherDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherDataResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherDataResponse'))
    ..add(DiagnosticsProperty('coord', coord))..add(DiagnosticsProperty('weather', weather))..add(DiagnosticsProperty('main', main));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherDataResponse&&(identical(other.coord, coord) || other.coord == coord)&&const DeepCollectionEquality().equals(other._weather, _weather)&&(identical(other.main, main) || other.main == main));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coord,const DeepCollectionEquality().hash(_weather),main);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherDataResponse(coord: $coord, weather: $weather, main: $main)';
}


}

/// @nodoc
abstract mixin class _$WeatherDataResponseCopyWith<$Res> implements $WeatherDataResponseCopyWith<$Res> {
  factory _$WeatherDataResponseCopyWith(_WeatherDataResponse value, $Res Function(_WeatherDataResponse) _then) = __$WeatherDataResponseCopyWithImpl;
@override @useResult
$Res call({
 String coord, List<WeatherDetail> weather, Main main
});


@override $MainCopyWith<$Res> get main;

}
/// @nodoc
class __$WeatherDataResponseCopyWithImpl<$Res>
    implements _$WeatherDataResponseCopyWith<$Res> {
  __$WeatherDataResponseCopyWithImpl(this._self, this._then);

  final _WeatherDataResponse _self;
  final $Res Function(_WeatherDataResponse) _then;

/// Create a copy of WeatherDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coord = null,Object? weather = null,Object? main = null,}) {
  return _then(_WeatherDataResponse(
coord: null == coord ? _self.coord : coord // ignore: cast_nullable_to_non_nullable
as String,weather: null == weather ? _self._weather : weather // ignore: cast_nullable_to_non_nullable
as List<WeatherDetail>,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as Main,
  ));
}

/// Create a copy of WeatherDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCopyWith<$Res> get main {
  
  return $MainCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}
}


/// @nodoc
mixin _$Coord implements DiagnosticableTreeMixin {

 double get lon; double get lat;
/// Create a copy of Coord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoordCopyWith<Coord> get copyWith => _$CoordCopyWithImpl<Coord>(this as Coord, _$identity);

  /// Serializes this Coord to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Coord'))
    ..add(DiagnosticsProperty('lon', lon))..add(DiagnosticsProperty('lat', lat));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coord&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.lat, lat) || other.lat == lat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lon,lat);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Coord(lon: $lon, lat: $lat)';
}


}

/// @nodoc
abstract mixin class $CoordCopyWith<$Res>  {
  factory $CoordCopyWith(Coord value, $Res Function(Coord) _then) = _$CoordCopyWithImpl;
@useResult
$Res call({
 double lon, double lat
});




}
/// @nodoc
class _$CoordCopyWithImpl<$Res>
    implements $CoordCopyWith<$Res> {
  _$CoordCopyWithImpl(this._self, this._then);

  final Coord _self;
  final $Res Function(Coord) _then;

/// Create a copy of Coord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lon = null,Object? lat = null,}) {
  return _then(_self.copyWith(
lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Coord].
extension CoordPatterns on Coord {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Coord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Coord() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Coord value)  $default,){
final _that = this;
switch (_that) {
case _Coord():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Coord value)?  $default,){
final _that = this;
switch (_that) {
case _Coord() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double lon,  double lat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Coord() when $default != null:
return $default(_that.lon,_that.lat);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double lon,  double lat)  $default,) {final _that = this;
switch (_that) {
case _Coord():
return $default(_that.lon,_that.lat);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double lon,  double lat)?  $default,) {final _that = this;
switch (_that) {
case _Coord() when $default != null:
return $default(_that.lon,_that.lat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Coord with DiagnosticableTreeMixin implements Coord {
  const _Coord({required this.lon, required this.lat});
  factory _Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);

@override final  double lon;
@override final  double lat;

/// Create a copy of Coord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoordCopyWith<_Coord> get copyWith => __$CoordCopyWithImpl<_Coord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoordToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Coord'))
    ..add(DiagnosticsProperty('lon', lon))..add(DiagnosticsProperty('lat', lat));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Coord&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.lat, lat) || other.lat == lat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lon,lat);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Coord(lon: $lon, lat: $lat)';
}


}

/// @nodoc
abstract mixin class _$CoordCopyWith<$Res> implements $CoordCopyWith<$Res> {
  factory _$CoordCopyWith(_Coord value, $Res Function(_Coord) _then) = __$CoordCopyWithImpl;
@override @useResult
$Res call({
 double lon, double lat
});




}
/// @nodoc
class __$CoordCopyWithImpl<$Res>
    implements _$CoordCopyWith<$Res> {
  __$CoordCopyWithImpl(this._self, this._then);

  final _Coord _self;
  final $Res Function(_Coord) _then;

/// Create a copy of Coord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lon = null,Object? lat = null,}) {
  return _then(_Coord(
lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$WeatherDetail implements DiagnosticableTreeMixin {

 String get description; String get icon;
/// Create a copy of WeatherDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherDetailCopyWith<WeatherDetail> get copyWith => _$WeatherDetailCopyWithImpl<WeatherDetail>(this as WeatherDetail, _$identity);

  /// Serializes this WeatherDetail to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherDetail'))
    ..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('icon', icon));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherDetail&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,icon);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherDetail(description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WeatherDetailCopyWith<$Res>  {
  factory $WeatherDetailCopyWith(WeatherDetail value, $Res Function(WeatherDetail) _then) = _$WeatherDetailCopyWithImpl;
@useResult
$Res call({
 String description, String icon
});




}
/// @nodoc
class _$WeatherDetailCopyWithImpl<$Res>
    implements $WeatherDetailCopyWith<$Res> {
  _$WeatherDetailCopyWithImpl(this._self, this._then);

  final WeatherDetail _self;
  final $Res Function(WeatherDetail) _then;

/// Create a copy of WeatherDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? icon = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherDetail].
extension WeatherDetailPatterns on WeatherDetail {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherDetail() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherDetail value)  $default,){
final _that = this;
switch (_that) {
case _WeatherDetail():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherDetail value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherDetail() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherDetail() when $default != null:
return $default(_that.description,_that.icon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description,  String icon)  $default,) {final _that = this;
switch (_that) {
case _WeatherDetail():
return $default(_that.description,_that.icon);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _WeatherDetail() when $default != null:
return $default(_that.description,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherDetail with DiagnosticableTreeMixin implements WeatherDetail {
  const _WeatherDetail({required this.description, required this.icon});
  factory _WeatherDetail.fromJson(Map<String, dynamic> json) => _$WeatherDetailFromJson(json);

@override final  String description;
@override final  String icon;

/// Create a copy of WeatherDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherDetailCopyWith<_WeatherDetail> get copyWith => __$WeatherDetailCopyWithImpl<_WeatherDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherDetailToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherDetail'))
    ..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('icon', icon));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherDetail&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,icon);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherDetail(description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WeatherDetailCopyWith<$Res> implements $WeatherDetailCopyWith<$Res> {
  factory _$WeatherDetailCopyWith(_WeatherDetail value, $Res Function(_WeatherDetail) _then) = __$WeatherDetailCopyWithImpl;
@override @useResult
$Res call({
 String description, String icon
});




}
/// @nodoc
class __$WeatherDetailCopyWithImpl<$Res>
    implements _$WeatherDetailCopyWith<$Res> {
  __$WeatherDetailCopyWithImpl(this._self, this._then);

  final _WeatherDetail _self;
  final $Res Function(_WeatherDetail) _then;

/// Create a copy of WeatherDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? icon = null,}) {
  return _then(_WeatherDetail(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Main implements DiagnosticableTreeMixin {

@JsonKey(name: 'temp_max') double get tempMax;@JsonKey(name: 'temp_min') double get tempMin; int get humidity;
/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainCopyWith<Main> get copyWith => _$MainCopyWithImpl<Main>(this as Main, _$identity);

  /// Serializes this Main to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Main'))
    ..add(DiagnosticsProperty('tempMax', tempMax))..add(DiagnosticsProperty('tempMin', tempMin))..add(DiagnosticsProperty('humidity', humidity));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Main&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tempMax,tempMin,humidity);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Main(tempMax: $tempMax, tempMin: $tempMin, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class $MainCopyWith<$Res>  {
  factory $MainCopyWith(Main value, $Res Function(Main) _then) = _$MainCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'temp_max') double tempMax,@JsonKey(name: 'temp_min') double tempMin, int humidity
});




}
/// @nodoc
class _$MainCopyWithImpl<$Res>
    implements $MainCopyWith<$Res> {
  _$MainCopyWithImpl(this._self, this._then);

  final Main _self;
  final $Res Function(Main) _then;

/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tempMax = null,Object? tempMin = null,Object? humidity = null,}) {
  return _then(_self.copyWith(
tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Main].
extension MainPatterns on Main {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Main value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Main() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Main value)  $default,){
final _that = this;
switch (_that) {
case _Main():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Main value)?  $default,){
final _that = this;
switch (_that) {
case _Main() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'temp_max')  double tempMax, @JsonKey(name: 'temp_min')  double tempMin,  int humidity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Main() when $default != null:
return $default(_that.tempMax,_that.tempMin,_that.humidity);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'temp_max')  double tempMax, @JsonKey(name: 'temp_min')  double tempMin,  int humidity)  $default,) {final _that = this;
switch (_that) {
case _Main():
return $default(_that.tempMax,_that.tempMin,_that.humidity);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'temp_max')  double tempMax, @JsonKey(name: 'temp_min')  double tempMin,  int humidity)?  $default,) {final _that = this;
switch (_that) {
case _Main() when $default != null:
return $default(_that.tempMax,_that.tempMin,_that.humidity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Main with DiagnosticableTreeMixin implements Main {
  const _Main({@JsonKey(name: 'temp_max') required this.tempMax, @JsonKey(name: 'temp_min') required this.tempMin, required this.humidity});
  factory _Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

@override@JsonKey(name: 'temp_max') final  double tempMax;
@override@JsonKey(name: 'temp_min') final  double tempMin;
@override final  int humidity;

/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainCopyWith<_Main> get copyWith => __$MainCopyWithImpl<_Main>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MainToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Main'))
    ..add(DiagnosticsProperty('tempMax', tempMax))..add(DiagnosticsProperty('tempMin', tempMin))..add(DiagnosticsProperty('humidity', humidity));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Main&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tempMax,tempMin,humidity);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Main(tempMax: $tempMax, tempMin: $tempMin, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class _$MainCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$MainCopyWith(_Main value, $Res Function(_Main) _then) = __$MainCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'temp_max') double tempMax,@JsonKey(name: 'temp_min') double tempMin, int humidity
});




}
/// @nodoc
class __$MainCopyWithImpl<$Res>
    implements _$MainCopyWith<$Res> {
  __$MainCopyWithImpl(this._self, this._then);

  final _Main _self;
  final $Res Function(_Main) _then;

/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tempMax = null,Object? tempMin = null,Object? humidity = null,}) {
  return _then(_Main(
tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dio)
final dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'd9a4f4b4f5dd4547792e188a807abbfd188c9340';

@ProviderFor(fetchWeather)
final fetchWeatherProvider = FetchWeatherFamily._();

final class FetchWeatherProvider
    extends
        $FunctionalProvider<
          AsyncValue<WeatherData>,
          WeatherData,
          FutureOr<WeatherData>
        >
    with $FutureModifier<WeatherData>, $FutureProvider<WeatherData> {
  FetchWeatherProvider._({
    required FetchWeatherFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'fetchWeatherProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchWeatherHash();

  @override
  String toString() {
    return r'fetchWeatherProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<WeatherData> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<WeatherData> create(Ref ref) {
    final argument = this.argument as String;
    return fetchWeather(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchWeatherProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchWeatherHash() => r'4f882c5bc3e90c6a4dd62c707c7536be435dd199';

final class FetchWeatherFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<WeatherData>, String> {
  FetchWeatherFamily._()
    : super(
        retry: null,
        name: r'fetchWeatherProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FetchWeatherProvider call(String city) =>
      FetchWeatherProvider._(argument: city, from: this);

  @override
  String toString() => r'fetchWeatherProvider';
}

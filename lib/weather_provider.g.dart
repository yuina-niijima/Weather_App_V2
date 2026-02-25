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

@ProviderFor(weatherRepository)
final weatherRepositoryProvider = WeatherRepositoryProvider._();

final class WeatherRepositoryProvider
    extends
        $FunctionalProvider<
          WeatherRepository,
          WeatherRepository,
          WeatherRepository
        >
    with $Provider<WeatherRepository> {
  WeatherRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherRepositoryHash();

  @$internal
  @override
  $ProviderElement<WeatherRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WeatherRepository create(Ref ref) {
    return weatherRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WeatherRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WeatherRepository>(value),
    );
  }
}

String _$weatherRepositoryHash() => r'f24bc7aefc54dadbb46d9ce3632c81289cde9713';

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

String _$fetchWeatherHash() => r'e64af4a5609b963c15b245963568e0d9fe5dc0b3';

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

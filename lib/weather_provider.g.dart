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

@ProviderFor(fetchweather)
final fetchweatherProvider = FetchweatherFamily._();

final class FetchweatherProvider
    extends
        $FunctionalProvider<
          AsyncValue<WeatherData>,
          WeatherData,
          FutureOr<WeatherData>
        >
    with $FutureModifier<WeatherData>, $FutureProvider<WeatherData> {
  FetchweatherProvider._({
    required FetchweatherFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'fetchweatherProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchweatherHash();

  @override
  String toString() {
    return r'fetchweatherProvider'
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
    return fetchweather(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchweatherProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchweatherHash() => r'611748b6236284a0b3f831ee288cf0f2b31d45fc';

final class FetchweatherFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<WeatherData>, String> {
  FetchweatherFamily._()
    : super(
        retry: null,
        name: r'fetchweatherProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FetchweatherProvider call(String city) =>
      FetchweatherProvider._(argument: city, from: this);

  @override
  String toString() => r'fetchweatherProvider';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_detail_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WeatherDetailViewModel)
final weatherDetailViewModelProvider = WeatherDetailViewModelFamily._();

final class WeatherDetailViewModelProvider
    extends $AsyncNotifierProvider<WeatherDetailViewModel, CityWeatherData> {
  WeatherDetailViewModelProvider._({
    required WeatherDetailViewModelFamily super.from,
    required LocationData super.argument,
  }) : super(
         retry: null,
         name: r'weatherDetailViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$weatherDetailViewModelHash();

  @override
  String toString() {
    return r'weatherDetailViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  WeatherDetailViewModel create() => WeatherDetailViewModel();

  @override
  bool operator ==(Object other) {
    return other is WeatherDetailViewModelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$weatherDetailViewModelHash() =>
    r'1138af860bf1c38e6ba318f9b38fe5d267f8fe1b';

final class WeatherDetailViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          WeatherDetailViewModel,
          AsyncValue<CityWeatherData>,
          CityWeatherData,
          FutureOr<CityWeatherData>,
          LocationData
        > {
  WeatherDetailViewModelFamily._()
    : super(
        retry: null,
        name: r'weatherDetailViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  WeatherDetailViewModelProvider call(LocationData location) =>
      WeatherDetailViewModelProvider._(argument: location, from: this);

  @override
  String toString() => r'weatherDetailViewModelProvider';
}

abstract class _$WeatherDetailViewModel
    extends $AsyncNotifier<CityWeatherData> {
  late final _$args = ref.$arg as LocationData;
  LocationData get location => _$args;

  FutureOr<CityWeatherData> build(LocationData location);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<CityWeatherData>, CityWeatherData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<CityWeatherData>, CityWeatherData>,
              AsyncValue<CityWeatherData>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

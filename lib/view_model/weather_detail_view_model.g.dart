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
    extends $AsyncNotifierProvider<WeatherDetailViewModel, WeatherData> {
  WeatherDetailViewModelProvider._({
    required WeatherDetailViewModelFamily super.from,
    required String super.argument,
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
    r'4608f66bdb793e85eefac551cdd89360add56b9c';

final class WeatherDetailViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          WeatherDetailViewModel,
          AsyncValue<WeatherData>,
          WeatherData,
          FutureOr<WeatherData>,
          String
        > {
  WeatherDetailViewModelFamily._()
    : super(
        retry: null,
        name: r'weatherDetailViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  WeatherDetailViewModelProvider call(String city) =>
      WeatherDetailViewModelProvider._(argument: city, from: this);

  @override
  String toString() => r'weatherDetailViewModelProvider';
}

abstract class _$WeatherDetailViewModel extends $AsyncNotifier<WeatherData> {
  late final _$args = ref.$arg as String;
  String get city => _$args;

  FutureOr<WeatherData> build(String city);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<WeatherData>, WeatherData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<WeatherData>, WeatherData>,
              AsyncValue<WeatherData>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

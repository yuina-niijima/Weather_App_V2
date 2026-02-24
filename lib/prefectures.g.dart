// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefectures.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(prefectures)
final prefecturesProvider = PrefecturesProvider._();

final class PrefecturesProvider
    extends $FunctionalProvider<List<String>, List<String>, List<String>>
    with $Provider<List<String>> {
  PrefecturesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'prefecturesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$prefecturesHash();

  @$internal
  @override
  $ProviderElement<List<String>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<String> create(Ref ref) {
    return prefectures(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }
}

String _$prefecturesHash() => r'959c600d5d263fb86068685d3aabd2e57d4352a1';

@ProviderFor(SelectedPrefecture)
final selectedPrefectureProvider = SelectedPrefectureProvider._();

final class SelectedPrefectureProvider
    extends $NotifierProvider<SelectedPrefecture, String> {
  SelectedPrefectureProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedPrefectureProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedPrefectureHash();

  @$internal
  @override
  SelectedPrefecture create() => SelectedPrefecture();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$selectedPrefectureHash() =>
    r'16b5162e94192a1eab14b751ac3a72c67fcf07db';

abstract class _$SelectedPrefecture extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

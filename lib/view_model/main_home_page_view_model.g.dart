// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_home_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MainHomeViewModel)
final mainHomeViewModelProvider = MainHomeViewModelProvider._();

final class MainHomeViewModelProvider
    extends $NotifierProvider<MainHomeViewModel, void> {
  MainHomeViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mainHomeViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mainHomeViewModelHash();

  @$internal
  @override
  MainHomeViewModel create() => MainHomeViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$mainHomeViewModelHash() => r'de0de8bd093cfbbd0d60b8dc03ca32dc1c63eba9';

abstract class _$MainHomeViewModel extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

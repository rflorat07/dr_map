// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedMapAssets)
const selectedMapAssetsProvider = SelectedMapAssetsProvider._();

final class SelectedMapAssetsProvider
    extends $NotifierProvider<SelectedMapAssets, List<MapAssets>> {
  const SelectedMapAssetsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedMapAssetsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedMapAssetsHash();

  @$internal
  @override
  SelectedMapAssets create() => SelectedMapAssets();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<MapAssets> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<MapAssets>>(value),
    );
  }
}

String _$selectedMapAssetsHash() => r'ec52bac6d8da7ffe14c2ffa0933f4e8ea2767ab5';

abstract class _$SelectedMapAssets extends $Notifier<List<MapAssets>> {
  List<MapAssets> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<MapAssets>, List<MapAssets>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<MapAssets>, List<MapAssets>>,
              List<MapAssets>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(SelectedProvinces)
const selectedProvincesProvider = SelectedProvincesProvider._();

final class SelectedProvincesProvider
    extends $NotifierProvider<SelectedProvinces, List<Province>> {
  const SelectedProvincesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedProvincesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedProvincesHash();

  @$internal
  @override
  SelectedProvinces create() => SelectedProvinces();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Province> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Province>>(value),
    );
  }
}

String _$selectedProvincesHash() => r'fe8ab6b781a9ff832e4dba0684f33386eeb0cf70';

abstract class _$SelectedProvinces extends $Notifier<List<Province>> {
  List<Province> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Province>, List<Province>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Province>, List<Province>>,
              List<Province>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ProvincesList)
const provincesListProvider = ProvincesListProvider._();

final class ProvincesListProvider
    extends $NotifierProvider<ProvincesList, List<Province>> {
  const ProvincesListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'provincesListProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$provincesListHash();

  @$internal
  @override
  ProvincesList create() => ProvincesList();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Province> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Province>>(value),
    );
  }
}

String _$provincesListHash() => r'8a4950341edb115790142dd9bca3206f168cb772';

abstract class _$ProvincesList extends $Notifier<List<Province>> {
  List<Province> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Province>, List<Province>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Province>, List<Province>>,
              List<Province>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(fetchProvinces)
const fetchProvincesProvider = FetchProvincesProvider._();

final class FetchProvincesProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  const FetchProvincesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchProvincesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchProvincesHash();

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    return fetchProvinces(ref);
  }
}

String _$fetchProvincesHash() => r'9703c9bf769a5f8d350e3fdaf668489778717839';

@ProviderFor(mockedProvinces)
const mockedProvincesProvider = MockedProvincesProvider._();

final class MockedProvincesProvider
    extends $FunctionalProvider<List<Province>, List<Province>, List<Province>>
    with $Provider<List<Province>> {
  const MockedProvincesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mockedProvincesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mockedProvincesHash();

  @$internal
  @override
  $ProviderElement<List<Province>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Province> create(Ref ref) {
    return mockedProvinces(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Province> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Province>>(value),
    );
  }
}

String _$mockedProvincesHash() => r'ea3b422fb3089603f6e48f78b170912397d93281';

@ProviderFor(SelectedRegion)
const selectedRegionProvider = SelectedRegionProvider._();

final class SelectedRegionProvider
    extends $NotifierProvider<SelectedRegion, MapRegions> {
  const SelectedRegionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedRegionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedRegionHash();

  @$internal
  @override
  SelectedRegion create() => SelectedRegion();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MapRegions value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MapRegions>(value),
    );
  }
}

String _$selectedRegionHash() => r'42f343ed5e070fa193cc1cc7acb7510e1d34c333';

abstract class _$SelectedRegion extends $Notifier<MapRegions> {
  MapRegions build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MapRegions, MapRegions>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MapRegions, MapRegions>,
              MapRegions,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

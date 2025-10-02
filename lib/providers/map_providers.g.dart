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
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
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
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    return mockedProvinces(ref);
  }
}

String _$mockedProvincesHash() => r'd94e54688cb79112b650df733dcceadfa8eb67ec';

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

@ProviderFor(AppTheme)
const appThemeProvider = AppThemeProvider._();

final class AppThemeProvider extends $NotifierProvider<AppTheme, ThemeMode> {
  const AppThemeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appThemeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appThemeHash();

  @$internal
  @override
  AppTheme create() => AppTheme();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeMode>(value),
    );
  }
}

String _$appThemeHash() => r'ca1585e3cbef5172d578e91a1f92ef39928899e6';

abstract class _$AppTheme extends $Notifier<ThemeMode> {
  ThemeMode build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ThemeMode, ThemeMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeMode, ThemeMode>,
              ThemeMode,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(AppLocale)
const appLocaleProvider = AppLocaleProvider._();

final class AppLocaleProvider extends $NotifierProvider<AppLocale, Locale> {
  const AppLocaleProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appLocaleProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appLocaleHash();

  @$internal
  @override
  AppLocale create() => AppLocale();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Locale value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Locale>(value),
    );
  }
}

String _$appLocaleHash() => r'3783f3fbe6d633750b6f3608328df88c001b7bac';

abstract class _$AppLocale extends $Notifier<Locale> {
  Locale build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Locale, Locale>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Locale, Locale>,
              Locale,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(appLocalizations)
const appLocalizationsProvider = AppLocalizationsProvider._();

final class AppLocalizationsProvider
    extends
        $FunctionalProvider<
          AppLocalizations,
          AppLocalizations,
          AppLocalizations
        >
    with $Provider<AppLocalizations> {
  const AppLocalizationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appLocalizationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appLocalizationsHash();

  @$internal
  @override
  $ProviderElement<AppLocalizations> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppLocalizations create(Ref ref) {
    return appLocalizations(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppLocalizations value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppLocalizations>(value),
    );
  }
}

String _$appLocalizationsHash() => r'65fa9cd8245df50acb187af05979e291b3321feb';

@ProviderFor(localizedMapAssets)
const localizedMapAssetsProvider = LocalizedMapAssetsFamily._();

final class LocalizedMapAssetsProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const LocalizedMapAssetsProvider._({
    required LocalizedMapAssetsFamily super.from,
    required MapAssets super.argument,
  }) : super(
         retry: null,
         name: r'localizedMapAssetsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$localizedMapAssetsHash();

  @override
  String toString() {
    return r'localizedMapAssetsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    final argument = this.argument as MapAssets;
    return localizedMapAssets(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LocalizedMapAssetsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$localizedMapAssetsHash() =>
    r'e2dffa75ac33d9f29483fc87a008566489d32bba';

final class LocalizedMapAssetsFamily extends $Family
    with $FunctionalFamilyOverride<String, MapAssets> {
  const LocalizedMapAssetsFamily._()
    : super(
        retry: null,
        name: r'localizedMapAssetsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LocalizedMapAssetsProvider call(MapAssets mapAsset) =>
      LocalizedMapAssetsProvider._(argument: mapAsset, from: this);

  @override
  String toString() => r'localizedMapAssetsProvider';
}

@ProviderFor(localizedMapRegions)
const localizedMapRegionsProvider = LocalizedMapRegionsFamily._();

final class LocalizedMapRegionsProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const LocalizedMapRegionsProvider._({
    required LocalizedMapRegionsFamily super.from,
    required MapRegions super.argument,
  }) : super(
         retry: null,
         name: r'localizedMapRegionsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$localizedMapRegionsHash();

  @override
  String toString() {
    return r'localizedMapRegionsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    final argument = this.argument as MapRegions;
    return localizedMapRegions(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LocalizedMapRegionsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$localizedMapRegionsHash() =>
    r'4bf3f7b7194fc23c7c1c61033b4716a5d94a4679';

final class LocalizedMapRegionsFamily extends $Family
    with $FunctionalFamilyOverride<String, MapRegions> {
  const LocalizedMapRegionsFamily._()
    : super(
        retry: null,
        name: r'localizedMapRegionsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LocalizedMapRegionsProvider call(MapRegions region) =>
      LocalizedMapRegionsProvider._(argument: region, from: this);

  @override
  String toString() => r'localizedMapRegionsProvider';
}

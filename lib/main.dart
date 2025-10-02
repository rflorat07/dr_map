import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'l10n/app_localizations.dart';
import 'pages/dr_map.dart';
import 'providers/map_providers.dart';
import 'styles/themes.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        fetchProvincesProvider.overrideWith((ref) => mockedProvinces(ref)),
      ],
      child: DRMainApp(),
    ),
  );
}

class DRMainApp extends ConsumerStatefulWidget {
  const DRMainApp({super.key});

  @override
  DRMainAppState createState() => DRMainAppState();
}

class DRMainAppState extends ConsumerState<DRMainApp>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      updateAppTheme();
    });
  }

  void updateAppTheme() {
    var brightness = View.of(context).platformDispatcher.platformBrightness;
    ref
        .read(appThemeProvider.notifier)
        .update(
          brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light,
        );
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    updateAppTheme();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = ref.watch(appThemeProvider);
    final selectedLocale = ref.watch(appLocaleProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: selectedLocale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        ...AppLocalizations.localizationsDelegates,
      ],
      localeResolutionCallback: (locales, supportedLocales) {
        Intl.defaultLocale = selectedLocale.toLanguageTag();
        return selectedLocale;
      },
      supportedLocales: AppLocalizations.supportedLocales,
      home: DRMapApp(),
      themeMode: appTheme,
      theme: MapAppTheme.lightTheme,
      darkTheme: MapAppTheme.darkTheme,
    );
  }
}

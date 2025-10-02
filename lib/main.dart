import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DRMapApp(),
      themeMode: appTheme,
      theme: MapAppTheme.lightTheme,
      darkTheme: MapAppTheme.darkTheme,
    );
  }
}

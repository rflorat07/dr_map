import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/map_providers.dart';

class AppThemeSwitch extends ConsumerWidget {
  const AppThemeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(appThemeProvider);

    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Row(
        spacing: 8,
        children: [
          Icon(Icons.light_mode),
          Switch(
            value: appTheme == ThemeMode.dark,
            onChanged: (value) {
              ref
                  .read(appThemeProvider.notifier)
                  .update(value ? ThemeMode.dark : ThemeMode.light);
            },
          ),
          Icon(Icons.dark_mode),
        ],
      ),
    );
  }
}

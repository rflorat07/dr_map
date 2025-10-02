import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/map_providers.dart';

class AppLangSwitch extends ConsumerWidget {
  const AppLangSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(appLocaleProvider);
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.all(32),
      child: Row(
        spacing: 8,
        children: [
          Text('ES', style: textTheme.headlineSmall),
          Switch(
            value: currentLocale == SupportLocales.en,
            onChanged: (val) {
              ref
                  .read(appLocaleProvider.notifier)
                  .update(val ? SupportLocales.en : SupportLocales.es);
            },
          ),
          Text('EN', style: textTheme.headlineSmall),
        ],
      ),
    );
  }
}

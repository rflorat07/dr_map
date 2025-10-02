import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/map_providers.dart';

class AllProvincesList extends ConsumerWidget {
  const AllProvincesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final allProvinces = ref.watch(provincesListProvider);
    final loc = ref.watch(appLocalizationsProvider);

    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16.0),
      width: 300,
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16.0,
        children: [
          Text(
            loc.provincesLabel,
            style: textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: allProvinces.length,
              itemBuilder: (context, index) {
                final province = allProvinces[index];
                final selectedProvinces = ref.watch(selectedProvincesProvider);
                final value = selectedProvinces.contains(province);

                return CheckboxListTile(
                  value: value,
                  title: Text(province.name),
                  onChanged: (value) {
                    if (value!) {
                      selectedProvinces.add(province);
                    } else {
                      selectedProvinces.remove(province);
                    }
                    ref
                        .read(selectedProvincesProvider.notifier)
                        .update(selectedProvinces);
                  },
                );
              },
            ),
          ),

          Divider(),

          Consumer(
            builder: (context, ref, child) {
              return CheckboxListTile(
                value:
                    allProvinces.length ==
                    ref.watch(selectedProvincesProvider).length,
                title: Text(loc.allProvincesLabel),
                onChanged: (value) {
                  if (value!) {
                    ref
                        .read(selectedProvincesProvider.notifier)
                        .update(allProvinces);
                  } else {
                    ref.read(selectedProvincesProvider.notifier).update([]);
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

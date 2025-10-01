import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/enums.dart';
import '../providers/map_providers.dart';

class MapRegionsList extends ConsumerWidget {
  const MapRegionsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final regions = MapRegions.values;
    final selectedRegion = ref.watch(selectedRegionProvider);

    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16.0),
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        spacing: 16.0,
        children: [
          Text(
            'Regions',
            style: textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),

          ...List.generate(regions.length, (index) {
            final region = regions[index];

            return ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 160),
              child: ListTile(
                title: Text(region.name),
                leading: Icon(
                  selectedRegion == region
                      ? Icons.radio_button_checked
                      : Icons.radio_button_unchecked,
                ),
                onTap: () {
                  ref.read(selectedRegionProvider.notifier).update(region);
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}

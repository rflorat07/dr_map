import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../models/enums.dart';
import '../providers/map_providers.dart';

class DRMap extends ConsumerWidget {
  const DRMap({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedAssets = ref.watch(selectedMapAssetsProvider);
    final allProvindes = ref.watch(provincesListProvider);
    final selectedProvinces = ref.watch(selectedProvincesProvider);
    final selectedRegion = ref.watch(selectedRegionProvider);

    return Stack(
      children: [
        SvgPicture.asset('./assets/svgs/map_assets/baserd.svg'),
        SvgPicture.asset('./assets/svgs/provinces/islabeata.svg'),
        SvgPicture.asset('./assets/svgs/provinces/islacatalina.svg'),
        SvgPicture.asset('./assets/svgs/provinces/islasaona.svg'),

        // Generate all provinces, highlight selected ones
        ...List.generate(allProvindes.length, (index) {
          final province = allProvindes[index];
          var provinceColor = Color(0xFFFEFEE9);

          if (selectedProvinces.contains(province)) {
            provinceColor = Color.fromARGB(
              200,
              (index + 1) * 20,
              (index + 2) * 30,
              (index + 3) * 40,
            );
          } else if (selectedRegion.provinces.contains(province.regionCode)) {
            provinceColor = Color.fromARGB(
              100,
              (index + 1) * 20,
              (index + 2) * 30,
              (index + 3) * 40,
            );
          }

          return SvgPicture.asset(
            './assets/svgs/provinces/${province.code}.svg',
            colorFilter: ColorFilter.mode(provinceColor, BlendMode.srcIn),
          );
        }),

        ...List.generate(selectedAssets.length, (index) {
          final asset = selectedAssets[index];
          final assetName = asset == MapAssets.seas || asset == MapAssets.names
              ? '${asset.name}_en'
              : asset.name;

          return SvgPicture.asset('./assets/svgs/map_assets/$assetName.svg');
        }),
      ],
    );
  }
}

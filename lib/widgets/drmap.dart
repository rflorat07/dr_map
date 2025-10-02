import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../models/enums.dart';
import '../providers/map_providers.dart';

class DRMap extends ConsumerWidget {
  const DRMap({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    final selectedAssets = ref.watch(selectedMapAssetsProvider);
    final allProvindes = ref.watch(provincesListProvider);
    final selectedProvinces = ref.watch(selectedProvincesProvider);
    final selectedRegion = ref.watch(selectedRegionProvider);
    final locale = ref.watch(appLocaleProvider);

    return Stack(
      children: [
        SvgPicture.asset('./assets/svgs/map_assets/baserd.svg'),
        SvgPicture.asset(
          './assets/svgs/provinces/islabeata.svg',
          colorFilter: ColorFilter.mode(colorScheme.onSurface, BlendMode.srcIn),
        ),
        SvgPicture.asset(
          './assets/svgs/provinces/islacatalina.svg',
          colorFilter: ColorFilter.mode(colorScheme.onSurface, BlendMode.srcIn),
        ),
        SvgPicture.asset(
          './assets/svgs/provinces/islasaona.svg',
          colorFilter: ColorFilter.mode(colorScheme.onSurface, BlendMode.srcIn),
        ),

        // Generate all provinces, highlight selected ones
        ...List.generate(allProvindes.length, (index) {
          final province = allProvindes[index];
          var provinceColor = colorScheme.onSurface;

          if (selectedProvinces.contains(province)) {
            provinceColor = Theme.of(context).brightness == Brightness.light
                ? Color.fromARGB(
                    200,
                    (index + 1) * 20,
                    (index + 2) * 30,
                    (index + 3) * 40,
                  )
                : colorScheme.tertiaryContainer;
          } else if (selectedRegion.provinces.contains(province.regionCode)) {
            provinceColor = Colors.green;
          }

          return SvgPicture.asset(
            './assets/svgs/provinces/${province.code}.svg',
            colorFilter: ColorFilter.mode(provinceColor, BlendMode.srcIn),
          );
        }),

        ...List.generate(selectedAssets.length, (index) {
          final asset = selectedAssets[index];
          final seaOrNames =
              asset == MapAssets.seas || asset == MapAssets.names;

          final assetName = seaOrNames
              ? '${asset.name}_${locale.languageCode}'
              : asset.name;

          final assetColor = seaOrNames
              ? ColorFilter.mode(colorScheme.surfaceTint, BlendMode.srcIn)
              : null;

          return SvgPicture.asset(
            './assets/svgs/map_assets/$assetName.svg',
            colorFilter: assetColor,
          );
        }),
      ],
    );
  }
}

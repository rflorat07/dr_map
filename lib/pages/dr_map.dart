import 'package:flutter/material.dart';

import '../widgets/all_provinces_list.dart';
import '../widgets/drmap.dart';
import '../widgets/map_assets_list.dart';
import '../widgets/map_regions_list.dart';

class DRMapApp extends StatelessWidget {
  const DRMapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC6ECFF),
      body: Stack(
        children: [
          Center(
            child: InteractiveViewer(clipBehavior: Clip.none, child: DRMap()),
          ),

          Align(alignment: Alignment.topLeft, child: MapAssetsList()),

          Align(alignment: Alignment.topRight, child: AllProvincesList()),

          Align(alignment: Alignment.bottomCenter, child: MapRegionsList()),
        ],
      ),
    );
  }
}

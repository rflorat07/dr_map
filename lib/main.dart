import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/dr_map.dart';
import 'providers/map_providers.dart';

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

class DRMainApp extends ConsumerWidget {
  const DRMainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: DRMapApp());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DRMapApp extends StatelessWidget {
  const DRMapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.asset('assets/svgs/rd.svg')),
    );
  }
}

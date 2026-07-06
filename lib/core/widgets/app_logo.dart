import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// The TeachMeApp brand mark, shared with the web (Inertia/Vue) client.
class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.size = 32});

  final double size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/logo.svg',
      width: size,
      height: size,
    );
  }
}

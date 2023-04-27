import 'package:beep_operator/core/utils/helper.dart';
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({super.key, required this.mobile, required this.tablet, required this.desktop});

  static bool isMobile(BuildContext context) => (MediaQuery.of(context).size.width < Helper().isMobile);

  static bool isTablet(BuildContext context) => (MediaQuery.of(context).size.width < Helper().isDesktop && MediaQuery.of(context).size.width >= Helper().isMobile);

  static bool isDesktop(BuildContext context) => (MediaQuery.of(context).size.width >= Helper().isDesktop);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    // If width it less then 1000 and more then 800 we consider it as tablet
    if (size.width >= Helper().isDesktop) {
      return desktop;
    }
    // If our width is more than 1200 then we consider it a desktop
    else if (size.width >= Helper().isMobile) {
      return tablet;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}

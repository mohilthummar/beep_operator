import 'package:beep_operator/core/responsive/responsive.dart';
import 'package:flutter/material.dart';

class TestText extends StatelessWidget {
  const TestText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Responsive.isMobile(context)
          ? 'isMobile'
          : Responsive.isTablet(context)
              ? "isTablet"
              : "isDesktop",
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}

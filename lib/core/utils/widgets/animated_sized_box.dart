import 'package:beep_operator/core/responsive/responsive.dart';
import 'package:beep_operator/core/utils/helper.dart';
import 'package:flutter/material.dart';

class AnimatedSizedBox extends StatelessWidget {
  final double? isMobileH;
  final double? isMobileW;
  final double? isNotMobileH;
  final double? isNotMobileW;
  final bool? booleanType;
  final Widget? child;
  final EdgeInsetsGeometry? padding;

  const AnimatedSizedBox({
    super.key,
    this.isMobileH,
    this.child,
    this.padding,
    this.isNotMobileH,
    this.booleanType,
    this.isMobileW,
    this.isNotMobileW,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Helper().defaultDuration,
      // color: Colors.black12,
      padding: padding,
      height: (booleanType ?? !Responsive.isMobile(context)) ? (isMobileH) : (isNotMobileH ?? isMobileH),
      width: (booleanType ?? !Responsive.isMobile(context)) ? (isMobileW) : (isNotMobileW ?? isMobileW),
      child: child,
    );
  }
}

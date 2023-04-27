import 'package:beep_operator/core/responsive/responsive.dart';
import 'package:flutter/material.dart';

TextStyle appBarText(BuildContext context, {Color? color}) => TextStyle(
      fontSize: Responsive.isTablet(context) ? 15 : 16,
      fontWeight: FontWeight.bold,
      color: color ?? Theme.of(context).iconTheme.color,
    );

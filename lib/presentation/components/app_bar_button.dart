import 'package:beep_operator/core/utils/app_text_style.dart';
import 'package:beep_operator/core/utils/helper.dart';
import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final String title;
  final Widget? icon;
  final VoidCallback onPressed;
  final Function(bool)? onHover;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;
  final TextStyle? style;

  const AppBarButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.onHover,
    this.icon,
    this.borderColor,
    this.padding,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      onHover: onHover,
      style: ElevatedButton.styleFrom(
        padding: padding ?? EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding / 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            color: borderColor ?? Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: style ?? appBarText(context)),
          icon ?? const SizedBox(),
        ],
      ),
    );
  }
}

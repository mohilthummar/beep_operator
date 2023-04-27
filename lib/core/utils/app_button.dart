import 'package:beep_operator/core/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppButton extends StatelessWidget {
  final String title;
  final double? width;
  final IconData? icon;
  final String? image;
  final double? height;
  final double? fontSize;
  final Widget? child;
  final bool? disableButton;
  final EdgeInsetsGeometry? padding;
  final Function() onPressed;
  final Function()? onLongPress;

  const AppButton({
    super.key,
    this.width,
    this.icon,
    this.image,
    this.height,
    this.fontSize,
    this.child,
    this.padding,
    this.disableButton,
    required this.onPressed,
    this.onLongPress,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: width ?? Get.width,
      height: height ?? 54,
      child: ElevatedButton(
        onPressed: disableButton == true ? null : onPressed,
        onLongPress: disableButton == true ? null : onLongPress,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: padding,
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        child: child ??
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null)
                  Row(
                    children: [Icon(icon, color: Colors.white, size: 24), const SizedBox(width: 5)],
                  )
                else
                  const SizedBox(),
                if (image != null && image != "")
                  Row(
                    children: [
                      image!.contains(".svg")
                          ? SvgPicture.asset(
                              image!,
                              height: 22,
                              color: Colors.white,
                              alignment: Alignment.bottomLeft,
                            )
                          : Image.asset(
                              image!,
                              height: 22,
                              color: Colors.white,
                              alignment: Alignment.bottomLeft,
                            ),
                      const SizedBox(width: 5)
                    ],
                  )
                else
                  const SizedBox(),
                if (title != "")
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize ?? 17,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                else
                  const SizedBox(),
              ],
            ),
      ),
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

String fontFamily = "NunitoSans";

class AppTheme {
  static ThemeData themeData = ThemeData(
    androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
    // fontFamily: fontFamily,
    primaryColor: const Color(0xff00AB6C),
    canvasColor: Colors.white,
    textTheme: buildTextTheme(baseLight.textTheme),
    primaryTextTheme: buildTextTheme(baseLight.textTheme),
  );
}

final ThemeData baseLight = ThemeData.light();
final ThemeData baseDark = ThemeData.dark();

/* ===================> Custom TextStyle <================== */

TextTheme buildTextTheme(TextTheme base) {
// ======Font=Family=======> Nunito Sans <=======Font=Family====== //

  return base.copyWith(
    /// Body Text
    bodyText1: TextStyle(fontSize: 16.0, letterSpacing: 0.5, fontWeight: FontWeight.w400, color: base.bodyText1!.color, fontFamily: fontFamily),

    /// This style is flutter default body textStyle (without textStyle) ///
    bodyText2: TextStyle(fontSize: 14.0, letterSpacing: 0.25, fontWeight: FontWeight.w400, color: base.bodyText2!.color, fontFamily: fontFamily),

    /// Head Line
    headline1: TextStyle(fontSize: 96.0, letterSpacing: -1.5, fontWeight: FontWeight.w300, color: base.headline1!.color, fontFamily: fontFamily),
    headline2: TextStyle(fontSize: 60.0, letterSpacing: -0.5, fontWeight: FontWeight.w300, color: base.headline2!.color, fontFamily: fontFamily),
    headline3: TextStyle(fontSize: 48.0, letterSpacing: 0.0, fontWeight: FontWeight.w400, color: base.headline3!.color, fontFamily: fontFamily),
    headline4: TextStyle(fontSize: 34.0, letterSpacing: 0.25, fontWeight: FontWeight.w400, color: base.headline4!.color, fontFamily: fontFamily),
    headline5: TextStyle(fontSize: 24.0, letterSpacing: 0.0, fontWeight: FontWeight.w400, color: base.headline5!.color, fontFamily: fontFamily),
    headline6: TextStyle(fontSize: 20.0, letterSpacing: 0.15, fontWeight: FontWeight.w500, color: base.headline6!.color, fontFamily: fontFamily),

    /// Sub Title
    subtitle1: TextStyle(fontSize: 16.0, letterSpacing: 0.15, fontWeight: FontWeight.w400, color: base.subtitle1!.color, fontFamily: fontFamily),
    subtitle2: TextStyle(fontSize: 14.0, letterSpacing: 0.1, fontWeight: FontWeight.w500, color: base.subtitle2!.color, fontFamily: fontFamily),

    /// Caption
    caption: TextStyle(fontSize: 12.0, letterSpacing: 0.4, fontWeight: FontWeight.w400, color: base.caption!.color, fontFamily: fontFamily),

    /// Over Line
    overline: TextStyle(fontSize: 10.0, letterSpacing: 1.5, fontWeight: FontWeight.w400, color: base.overline!.color, fontFamily: fontFamily),

    /// Button
    button: TextStyle(fontSize: 14.0, letterSpacing: 1.25, fontWeight: FontWeight.w400, color: base.button!.color, fontFamily: fontFamily),
  );

/* ===================> Flutter SDK TextStyle <================== */

  /* headline1    96.0  light   -1.5  */
  /* headline2    60.0  light   -0.5  */
  /* headline3    48.0  regular  0.0  */
  /* headline4    34.0  regular  0.25 */
  /* headline5    24.0  regular  0.0  */
  /* headline6    20.0  medium   0.15 */
  /* subtitle1    16.0  regular  0.15 */
  /* subtitle2    14.0  medium   0.1  */
  /* bodyText2    16.0  regular  0.5  */
  /* bodyText1    14.0  regular  0.25 */
  /* button       14.0  medium   1.25 */
  /* caption      12.0  regular  0.4  */
  /* overline     10.0  regular  1.5  */
}

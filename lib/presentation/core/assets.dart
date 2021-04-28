import 'dart:ui' show Color;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppImages {
  AppImages._();

  static const logo = 'assets/images/png/logo.png';
  static const adBanner = 'assets/images/png/adBanner.png';
  static const facebook = 'assets/images/png/facebook.png';
  static const instagram = 'assets/images/png/instagram.png';
  static const google = 'assets/images/png/google.png';
  static const target = 'assets/images/png/target.png';
  static const win = 'assets/images/png/win.png';
  static const defeat = 'assets/images/png/defeat.png';
  static const trendUp = 'assets/images/png/trend_up.png';
  static const trendDown = 'assets/images/png/trend_down.png';
  static const delete = 'assets/images/png/delete.png';
  static const photoPlaceholder = 'assets/images/png/photoPlaceholder.png';
  static const bot = 'assets/images/png/bot.png';
}

class AppColors {
  AppColors._();

  static const Color transparent = Color(0x00000000);
  static const Color black = Color.fromRGBO(0, 0, 0, 1.0);
  static const Color black1 = Color.fromRGBO(22, 20, 20, 1.0);
  static const Color black2 = Color.fromRGBO(52, 52, 50, 1.0);
  static const Color blue = Color.fromRGBO(0, 122, 255, 1.0);
  static const Color gray = Color.fromRGBO(228, 228, 228, 1.0);
  static const Color green = Color.fromRGBO(50, 164, 79, 1.0);
  static const Color red = Color.fromRGBO(204, 40, 28, 1.0);
  static const Color white = Color.fromRGBO(255, 255, 255, 1.0);
  static const Color yellow = Color.fromRGBO(245, 189, 68, 1.0);
}

class AppFonts {
  AppFonts._();

  static const mini = 9.0;
  static const small = 14.0;
  static const smallMedium = 17.0;
  static const medium = 23.0;
  static const bigMedium = 37.0;
  static const big = 60.0;
  static const large = 80.0;

  static const defaultTextStyle = TextStyle();

/*static const TextTheme blackCupertino = TextTheme(
    headline1 : TextStyle(debugLabel: 'blackCupertino headline1', fontFamily: '.SF UI Display', inherit: true, color: Colors.black54, decoration: TextDecoration.none),
    headline2 : TextStyle(debugLabel: 'blackCupertino headline2', fontFamily: '.SF UI Display', inherit: true, color: Colors.black54, decoration: TextDecoration.none),
    headline3 : TextStyle(debugLabel: 'blackCupertino headline3', fontFamily: '.SF UI Display', inherit: true, color: Colors.black54, decoration: TextDecoration.none),
    headline4 : TextStyle(debugLabel: 'blackCupertino headline4', fontFamily: '.SF UI Display', inherit: true, color: Colors.black54, decoration: TextDecoration.none),
    headline5 : TextStyle(debugLabel: 'blackCupertino headline5', fontFamily: '.SF UI Display', inherit: true, color: Colors.black87, decoration: TextDecoration.none),
    headline6 : TextStyle(debugLabel: 'blackCupertino headline6', fontFamily: '.SF UI Display', inherit: true, color: Colors.black87, decoration: TextDecoration.none),
    bodyText1 : TextStyle(debugLabel: 'blackCupertino bodyText1', fontFamily: '.SF UI Text',    inherit: true, color: Colors.black87, decoration: TextDecoration.none),
    bodyText2 : TextStyle(debugLabel: 'blackCupertino bodyText2', fontFamily: '.SF UI Text',    inherit: true, color: Colors.black87, decoration: TextDecoration.none),
    subtitle1 : TextStyle(debugLabel: 'blackCupertino subtitle1', fontFamily: '.SF UI Text',    inherit: true, color: Colors.black87, decoration: TextDecoration.none),
    subtitle2 : TextStyle(debugLabel: 'blackCupertino subtitle2', fontFamily: '.SF UI Text',    inherit: true, color: Colors.black,   decoration: TextDecoration.none),
    caption   : TextStyle(debugLabel: 'blackCupertino caption',   fontFamily: '.SF UI Text',    inherit: true, color: Colors.black54, decoration: TextDecoration.none),
    button    : TextStyle(debugLabel: 'blackCupertino button',    fontFamily: '.SF UI Text',    inherit: true, color: Colors.black87, decoration: TextDecoration.none),
    overline  : TextStyle(debugLabel: 'blackCupertino overline',  fontFamily: '.SF UI Text',    inherit: true, color: Colors.black,   decoration: TextDecoration.none),
  );
  static const TextTheme whiteCupertino = TextTheme(
    headline1 : TextStyle(debugLabel: 'whiteCupertino headline1', fontFamily: '.SF UI Display', inherit: true, color: Colors.white70, decoration: TextDecoration.none),
    headline2 : TextStyle(debugLabel: 'whiteCupertino headline2', fontFamily: '.SF UI Display', inherit: true, color: Colors.white70, decoration: TextDecoration.none),
    headline3 : TextStyle(debugLabel: 'whiteCupertino headline3', fontFamily: '.SF UI Display', inherit: true, color: Colors.white70, decoration: TextDecoration.none),
    headline4 : TextStyle(debugLabel: 'whiteCupertino headline4', fontFamily: '.SF UI Display', inherit: true, color: Colors.white70, decoration: TextDecoration.none),
    headline5 : TextStyle(debugLabel: 'whiteCupertino headline5', fontFamily: '.SF UI Display', inherit: true, color: Colors.white,   decoration: TextDecoration.none),
    headline6 : TextStyle(debugLabel: 'whiteCupertino headline6', fontFamily: '.SF UI Display', inherit: true, color: Colors.white,   decoration: TextDecoration.none),
    subtitle1 : TextStyle(debugLabel: 'whiteCupertino subtitle1', fontFamily: '.SF UI Text',    inherit: true, color: Colors.white,   decoration: TextDecoration.none),
    bodyText1 : TextStyle(debugLabel: 'whiteCupertino bodyText1', fontFamily: '.SF UI Text',    inherit: true, color: Colors.white,   decoration: TextDecoration.none),
    bodyText2 : TextStyle(debugLabel: 'whiteCupertino bodyText2', fontFamily: '.SF UI Text',    inherit: true, color: Colors.white,   decoration: TextDecoration.none),
    caption   : TextStyle(debugLabel: 'whiteCupertino caption',   fontFamily: '.SF UI Text',    inherit: true, color: Colors.white70, decoration: TextDecoration.none),
    button    : TextStyle(debugLabel: 'whiteCupertino button',    fontFamily: '.SF UI Text',    inherit: true, color: Colors.white,   decoration: TextDecoration.none),
    subtitle2 : TextStyle(debugLabel: 'whiteCupertino subtitle2', fontFamily: '.SF UI Text',    inherit: true, color: Colors.white,   decoration: TextDecoration.none),
    overline  : TextStyle(debugLabel: 'whiteCupertino overline',  fontFamily: '.SF UI Text',    inherit: true, color: Colors.white,   decoration: TextDecoration.none),
  );
  // TODO black and white Roboto for Android*/
}
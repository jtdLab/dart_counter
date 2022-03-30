import 'package:dart_counter/presentation/core/app_assets.dart';
import 'package:flutter/cupertino.dart';

class Theme {
  const Theme();

  static CupertinoThemeData light() => const CupertinoThemeData(
        primaryColor: AppColors.black,
        primaryContrastingColor: AppColors.white,
        scaffoldBackgroundColor: AppColors.white,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
            fontFamily: 'SF-Pro',
            color: AppColors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
      );

  static CupertinoThemeData dark() => light();
}

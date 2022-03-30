import 'package:dart_counter/presentation/core/app_assets.dart';
import 'package:flutter/cupertino.dart';

class Theme {
  const Theme();

  static CupertinoThemeData theme() => const CupertinoThemeData(
        primaryColor: CupertinoDynamicColor.withBrightness(
          color: AppColors.black,
          darkColor: AppColors.white,
        ),
        primaryContrastingColor: CupertinoDynamicColor.withBrightness(
          color: AppColors.white,
          darkColor: AppColors.black,
        ),
        scaffoldBackgroundColor: CupertinoDynamicColor.withBrightness(
          color: AppColors.white,
          darkColor: CupertinoColors.secondarySystemFill,
        ),
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
            fontFamily: 'SF-Pro',
            color: CupertinoDynamicColor.withBrightness(
              color: AppColors.black,
              darkColor: AppColors.white,
            ),
            fontWeight: FontWeight.w800,
          ),
        ),
      );
}

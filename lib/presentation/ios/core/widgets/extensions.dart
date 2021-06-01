import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:responsive_builder/responsive_builder.dart'
    hide getValueForRefinedSize;

class ResponsiveDouble {
  final double small;
  final double normal;
  final double large;
  final double extraLarge;

  const ResponsiveDouble({
    required this.small,
    required this.normal,
    required this.large,
    required this.extraLarge,
  });
}

// TODO maybe throw error when no tablet size is provided but running device is tablet
extension ResponsiveDoubleX on Widget {
  double responsiveDouble(
      {required BuildContext context,
      required ResponsiveDouble mobile,
      ResponsiveDouble? tablet}) {
    return getValueForScreenType(
      context: context,
      mobile: getValueForRefinedSize<double>(
        context: context,
        small: mobile.small,
        normal: mobile.normal,
        large: mobile.large,
        extraLarge: mobile.extraLarge,
      ),
      tablet: getValueForRefinedSize<double>(
        context: context,
        small: tablet?.small ?? mobile.small,
        normal: tablet?.normal ?? mobile.normal,
        large: tablet?.large ?? mobile.large,
        extraLarge: tablet?.extraLarge ?? mobile.extraLarge,
      ),
    );
  }

  void showToast(String msg, {double fontSize = 16}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: AppColors.red,
        textColor: AppColors.white,
        fontSize: fontSize);
  }

  double border4(BuildContext context) => responsiveDouble(
        context: context,
        mobile: const ResponsiveDouble(
          small: 3.5,
          normal: 4,
          large: 4,
          extraLarge: 5,
        ),
      );

  double size6(BuildContext context) => responsiveDouble(
        context: context,
        mobile: const ResponsiveDouble(
          small: 6,
          normal: 6,
          large: 6,
          extraLarge: 6,
        ),
      );

  double size12(BuildContext context) => responsiveDouble(
        context: context,
        mobile: const ResponsiveDouble(
          small: 12,
          normal: 12,
          large: 12,
          extraLarge: 12,
        ),
      );

  double size30(BuildContext context) => responsiveDouble(
        context: context,
        mobile: const ResponsiveDouble(
          small: 25,
          normal: 30,
          large: 35,
          extraLarge: 40,
        ),
      );

  double size40(BuildContext context) => responsiveDouble(
        context: context,
        mobile: const ResponsiveDouble(
          small: 34,
          normal: 40,
          large: 45,
          extraLarge: 55,
        ),
      );

  double size45(BuildContext context) => responsiveDouble(
        context: context,
        mobile: const ResponsiveDouble(
          small: 38,
          normal: 45,
          large: 50,
          extraLarge: 60,
        ),
      );

  double size50(BuildContext context) => responsiveDouble(
        context: context,
        mobile: const ResponsiveDouble(
          small: 43,
          normal: 50,
          large: 55,
          extraLarge: 63,
        ),
      );

  double size55(BuildContext context) => responsiveDouble(
        context: context,
        mobile: const ResponsiveDouble(
          small: 55,
          normal: 55,
          large: 55,
          extraLarge: 55,
        ),
      );

  double size70(BuildContext context) => responsiveDouble(
        context: context,
        mobile: const ResponsiveDouble(
          small: 70,
          normal: 70,
          large: 70,
          extraLarge: 70,
        ),
      );

  double size150(BuildContext context) => responsiveDouble(
        context: context,
        mobile: const ResponsiveDouble(
          small: 150,
          normal: 150,
          large: 150,
          extraLarge: 150,
        ),
      );
}

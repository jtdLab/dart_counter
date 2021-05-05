import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveDouble {
  final double normal;
  final double large;
  final double extraLarge;

  ResponsiveDouble({required this.normal, required this.large, required this.extraLarge});
}

extension ResponsiveDoubleX on Widget {
  double responsiveDouble(
      {required BuildContext context,
      required ResponsiveDouble mobile,
      ResponsiveDouble? tablet}) {
    return getValueForScreenType(
      context: context,
      mobile: getValueForRefinedSize<double>(
        context: context,
        normal: mobile.normal,
        large: mobile.large,
        extraLarge: mobile.extraLarge,
      ),
      tablet: getValueForRefinedSize<double>(
        context: context,
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
}

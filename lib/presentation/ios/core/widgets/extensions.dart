import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:responsive_builder/responsive_builder.dart';

extension ResponsiveDoubleX on StatelessWidget {
  double responsiveDouble(
      {required BuildContext context,
      required List<double> mobile,
      List<double>? tablet}) {
    return getValueForScreenType(
      context: context,
      mobile: getValueForRefinedSize<double>(
        context: context,
        normal: mobile[0],
        large: mobile[1],
        extraLarge: mobile[2],
      ),
      tablet: getValueForRefinedSize<double>(
        context: context,
        normal: tablet?[0] ?? mobile[0],
        large: tablet?[1] ?? mobile[1],
        extraLarge: tablet?[2] ?? mobile[2],
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

import 'package:dart_counter/presentation/core/core.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppToast {
  AppToast();

  /// Returns instance registered inside getIt.
  factory AppToast.getIt() => getIt<AppToast>();

  void show(
    String msg, {
    double fontSize = 16,
  }) =>
      Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: AppColors.red,
        textColor: AppColors.white,
        fontSize: fontSize,
      );
}

extension AppToastX on BuildContext {
  void showToast(String msg, {double fontSize = 16}) {
    read<AppToast>().show(msg, fontSize: fontSize);
  }
}

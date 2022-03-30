import 'package:dart_counter/core/injection.dart';
import 'package:dart_counter/presentation/core/app_assets.dart';
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

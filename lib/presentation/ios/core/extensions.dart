// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// OTHER
import 'package:fluttertoast/fluttertoast.dart';

extension ToastX on Widget {
  /// Displays a toast with [msg] on the bottom of the screen.
  void showToast(
    String msg, {
    double fontSize = 16, // TODO
  }) {
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
}

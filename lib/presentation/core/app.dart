// CORE
// APPS
import 'package:dart_counter/presentation/android/app.dart' as android;
import 'package:dart_counter/presentation/core/platform.dart';
import 'package:dart_counter/presentation/core/presentation_error.dart';
import 'package:dart_counter/presentation/ios/app.dart' as ios;
import 'package:flutter/widgets.dart';

/// The root widget of the application.
class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final platform = Platform.getIt();

    if (platform.isAndroid) {
      return const android.App();
    } else if (platform.isIOS) {
      return const ios.App();
    } else {
      throw PlatformNotSupportedError();
    }
  }
}

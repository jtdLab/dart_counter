// CORE
import 'package:dart_counter/core/injection.dart';
import 'package:dart_counter/presentation/core/presentation_error.dart';

// APPS
import 'package:dart_counter/presentation/android/app.dart'
    as android;
import 'package:dart_counter/presentation/ios/app.dart' as ios;
import 'package:flutter/widgets.dart';

import 'package:platform/platform.dart';

/// The root widget of the application.
class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final platform = getIt<Platform>();

    if (platform.isAndroid) {
      return const android.App();
    } else if (platform.isIOS) {
      return const ios.App();
    } else {
      throw PlatformNotSupportedError();
    }
  }
}

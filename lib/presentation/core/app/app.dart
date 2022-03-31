// CORE
// APPS
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/android/app.dart' as android;
import 'package:dart_counter/presentation/android/core/core.dart' as android;
import 'package:dart_counter/presentation/core/core.dart';
import 'package:dart_counter/presentation/core/presentation_error.dart';
import 'package:dart_counter/presentation/ios/app.dart' as ios;
import 'package:dart_counter/presentation/ios/core/core.dart' as ios;
import 'package:flutter/widgets.dart';

part 'widgets.dart';

/// The root widget of the application.
class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final platform = context.read<Platform>();

    if (platform.isAndroid) {
      return AppScope(
        router: android.Router(),
        app: const android.App(),
      );
    } else if (platform.isIOS) {
      return AppScope(
        router: ios.Router(),
        app: const ios.App(),
      );
    } else {
      throw PlatformNotSupportedError();
    }
  }
}
// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// OTHER
import 'dart:io';

// BLOCS
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';

// APPS
import 'package:dart_counter/presentation/android/core/app_widget.dart'
    as android;
import 'package:dart_counter/presentation/ios/core/app_widget.dart' as ios;

// LOCAL WIDGETS
part 'widgets.dart';

/// The root widget of the application.
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc.getIt()..add(const AuthEvent.started()),
      child: PlatformWidget(
        android: (context) => const android.AppWidget(),
        ios: (context) => const ios.AppWidget(),
      ),
    );
  }
}

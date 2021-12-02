// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// OTHER
import 'dart:io';
import 'package:dart_counter/generated/codegen_loader.g.dart';

// BLOCS
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';

// APPS
import 'package:dart_counter/presentation/android/core/app_widget.dart'
    as android;
import 'package:dart_counter/presentation/ios/core/app_widget.dart' as ios;

// LOCAL WIDGETS
part 'widgets.dart';

/// The root of the application.
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('de'),
      ],
      fallbackLocale: const Locale('en'),
      path: 'assets/languages',
      assetLoader: const CodegenLoader(),
      child: BlocProvider(
        create: (context) => getIt<AuthBloc>()..add(const AuthEvent.started()),
        child: PlatformWidget(
          android: (context) => android.AppWidget(),
          ios: (context) => ios.AppWidget(),
        ),
      ),
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:dart_counter/generated/codegen_loader.g.dart';

import 'package:dart_counter/application/auth/auth_bloc.dart';

import 'package:dart_counter/presentation/android/core/app_widget.dart'
    as android;
import 'package:dart_counter/presentation/ios/core/app_widget.dart' as ios;
import 'widgets/widgets.dart';

// This widget is the root of the application.
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: EasyLocalization(
        supportedLocales: const [
          Locale('en'),
          Locale('de'),
        ],
        fallbackLocale: const Locale('en'),
        path: 'assets/languages',
        assetLoader: const CodegenLoader(),
        child: PlatformWidget(
          android: (context) => android.AppWidget(),
          ios: (context) => ios.AppWidget(),
        ),
      ),
    );
  }
}
import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/core/friend_request/friend_request_bloc.dart';
import 'package:dart_counter/application/core/invitation/invitation_bloc.dart';
import 'package:dart_counter/application/core/loading/loading_bloc.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/application/core/user/user_bloc.dart';
import 'package:dart_counter/generated/codegen_loader.g.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/android/core/app_widget.dart'
    as android;
import 'package:dart_counter/presentation/core/platform_widget.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_widget.dart'
    as ios;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        BlocProvider(
          create: (context) => getIt<FriendRequestBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<InvitationBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UserBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<PlayBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<LoadingBloc>(),
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

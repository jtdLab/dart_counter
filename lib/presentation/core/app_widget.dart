import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/career_stats/career_stats_watcher/career_stats_watcher_bloc.dart';
import 'package:dart_counter/application/friends/friends_watcher/friends_watcher_bloc.dart';
import 'package:dart_counter/application/invitations/invitations_watcher/invitations_watcher_bloc.dart';
import 'package:dart_counter/application/user/user_actor/user_actor_bloc.dart';
import 'package:dart_counter/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:dart_counter/generated/codegen_loader.g.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/android/core/app_widget.dart'
    as android;
import 'package:dart_counter/presentation/core/platform_widget.dart';
import 'package:dart_counter/presentation/ios/core/app_widget.dart' as ios;
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
          create: (context) =>
              getIt<UserWatcherBloc>()..add(const UserWatcherEvent.load()),
        ),
        BlocProvider(
          create: (context) => getIt<UserActorBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CareerStatsWatcherBloc>()
            ..add(const CareerStatsWatcherEvent.load()),
        ),
        BlocProvider(
          create: (context) => getIt<InvitationsWatcherBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<FriendsWatcherBloc>(),
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
        child: Builder(
          builder: (context) {
            return PlatformWidget(
              android: (context) => android.AppWidget(),
              ios: (context) => ios.AppWidget(),
            );
          },
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/presentation/ios/core/auth_widget.dart';
import 'package:dart_counter/presentation/ios/create_game/create_game_page.dart';
import 'package:dart_counter/presentation/ios/friends/friends_page.dart';
import 'package:dart_counter/presentation/ios/game_history/game_history_page.dart';
import 'package:dart_counter/presentation/ios/home/home_page.dart';
import 'package:dart_counter/presentation/ios/in_game/in_game_page.dart';
import 'package:dart_counter/presentation/ios/invitations/invitations_page.dart';
import 'package:dart_counter/presentation/ios/profile/profile_page.dart';
import 'package:dart_counter/presentation/ios/settings/settings_page.dart';
import 'package:dart_counter/presentation/ios/social_media/social_media_page.dart';
import 'package:dart_counter/presentation/ios/splash/splash_page.dart';

@CupertinoAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: SplashPage,
    ),
    AutoRoute(
      page: AuthWidget,
    ),
    AutoRoute(
      page: HomePage,
    ),
    AutoRoute(
      page: ProfilePage,
    ),
    AutoRoute(
      page: GameHistoryPage,
    ),
    AutoRoute(
      page: InvitationsPage,
    ),
    AutoRoute(
      page: FriendsPage,
    ),
    AutoRoute(
      page: SocialMediaPage,
    ),
    AutoRoute(
      page: SettingsPage,
    ),
    AutoRoute(
      page: CreateGamePage,
    ),
    AutoRoute(
      page: InGamePage,
    ),
  ],
)
class $Router {}

import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/presentation/ios/auth/auth_page.dart';
import 'package:dart_counter/presentation/ios/create_game/create_game_page.dart';
import 'package:dart_counter/presentation/ios/friends/friends_page.dart';
import 'package:dart_counter/presentation/ios/game_history/game_history_page.dart';
import 'package:dart_counter/presentation/ios/game_history_details/game_history_details_page.dart';
import 'package:dart_counter/presentation/ios/game_history_overview/game_history_overview_page.dart';
import 'package:dart_counter/presentation/ios/home/home_page.dart';
import 'package:dart_counter/presentation/ios/in_game/in_game_page.dart';
import 'package:dart_counter/presentation/ios/invitations/invitations_page.dart';
import 'package:dart_counter/presentation/ios/post_game/post_game_page.dart';
import 'package:dart_counter/presentation/ios/profile/profile_page.dart';
import 'package:dart_counter/presentation/ios/settings/modals/change_username/change_username_modal.dart';
import 'package:dart_counter/presentation/ios/settings/settings_page.dart';
import 'package:dart_counter/presentation/ios/splash/splash_page.dart';

@CupertinoAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      initial: true,
      page: SplashPage,
    ),
    CustomRoute(
      page: AuthPage,
    ),
    CustomRoute(
      page: HomePage,
    ),
    CupertinoRoute(
      page: ProfilePage,
    ),
    CupertinoRoute(
      page: GameHistoryPage,
      children: [
        CustomRoute(
          initial: true,
          page: GameHistoryOverviewPage,
        ),
        CustomRoute(
          page: GameHistoryDetailsPage,
          reverseDurationInMilliseconds: 0,
        ),
      ],
    ),
    CupertinoRoute(
      page: InvitationsPage,
    ),
    CupertinoRoute(
      page: FriendsPage,
    ),
    CupertinoRoute(
      page: SettingsPage,
    ),
    CupertinoRoute(
      page: CreateGamePage,
    ),
    CupertinoRoute(
      page: InGamePage,
    ),
    CupertinoRoute(
      page: PostGamePage,
    ),
  ],
)
class $Router {}

/**
 * children: [
        CustomRoute(
          page: ChangeUsernameModal,
          children: [
            CustomRoute(
              initial: true,
              page: SubPage1,
            ),
            CustomRoute(
              page: SubPage2,
            ),
          ],
        ),
      ],
 */

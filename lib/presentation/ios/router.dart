import 'package:auto_route/auto_route.dart';

import 'auth/auth_flow.dart';
import 'main/contact/contact_page.dart';
import 'main/friends/friends_page.dart';
import 'main/game/create_game/create_game_page.dart';
import 'main/game/game_flow.dart';
import 'main/game/in_game/in_game_page.dart';
import 'main/game/post_game/post_game_page.dart';
import 'main/game_history/game_history_details/game_history_details_page.dart';
import 'main/game_history/game_history_flow.dart';
import 'main/game_history/game_history_overview/game_history_overview_page.dart';
import 'main/home/home_page.dart';
import 'main/invitations/invitations_page.dart';
import 'main/loading/loading_page.dart';
import 'main/main_flow.dart';
import 'main/privacy_policy/privacy_policy_page.dart';
import 'main/profile/profile_page.dart';
import 'main/settings/settings_page.dart';

@CupertinoAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      page: AuthFlow,
    ),
    CustomRoute(
      page: MainFlow,
      children: [
        CustomRoute(
          initial: true,
          page: LoadingPage,
        ),
        CustomRoute(
          page: HomePage,
        ),
        CupertinoRoute(
          page: SettingsPage,
        ),
        CupertinoRoute(
          page: PrivacyPolicyPage,
        ),
        CupertinoRoute(
          page: ContactPage,
        ),
        CupertinoRoute(
          page: InvitationsPage,
        ),
        CupertinoRoute(
          page: FriendsPage,
        ),
        CupertinoRoute(
          page: ProfilePage,
        ),
        CupertinoRoute(
          page: GameHistoryFlow,
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
          page: GameFlow,
          children: [
            CupertinoRoute(
              initial: true,
              page: CreateGamePage,
            ),
            CupertinoRoute(
              page: InGamePage,
            ),
            CupertinoRoute(
              page: PostGamePage,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $Router {}

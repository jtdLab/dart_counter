import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/presentation/ios/auth/auth_flow.dart';
import 'package:dart_counter/presentation/ios/main/loading/loading_page.dart';
import 'package:dart_counter/presentation/ios/main/main_flow.dart';

import 'main/friends/friends_page.dart';
import 'main/game/create_game/create_game_page.dart';
import 'main/game/game_flow.dart';
import 'main/game/in_game/in_game_page.dart';
import 'main/game/post_game/post_game_page.dart';
import 'main/game_history/game_history_details/game_history_details_page.dart';
import 'main/game_history/game_history_flow.dart';
import 'main/game_history/game_history_overview/game_history_overview_page.dart';
import 'main/home/home_page.dart';
import 'main/impressum/impressum_page.dart';
import 'main/invitations/invitations_page.dart';
import 'main/legal/legal_page.dart';
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
          page: LegalPage,
        ),
        CupertinoRoute(
          page: ImpressumPage,
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

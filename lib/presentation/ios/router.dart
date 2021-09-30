import 'package:dart_counter/presentation/ios/core/core.dart';

import 'auth/auth_flow.dart';
import 'main/contact/contact_page.dart';
import 'main/friends/friends_flow.dart';
import 'main/friends/overview/overview_page.dart' as friends_overview;
import 'main/friends/profile/profile_page.dart' as friends_profile;
import 'main/game/create_game/create_game_page.dart';
import 'main/game/game_flow.dart';
import 'main/game/in_game/in_game_page.dart';
import 'main/game/post_game/post_game_page.dart';
import 'main/game_history/details/details_page.dart' as game_history_details;
import 'main/game_history/game_history_flow.dart';
import 'main/game_history/overview/overview_page.dart' as game_history_overview;
import 'main/game_invitations/game_invitations_page.dart';
import 'main/home/home_page.dart';
import 'main/main_flow.dart';
import 'main/privacy_policy/privacy_policy_page.dart';
import 'main/profile/profile_page.dart';
import 'main/settings/settings_page.dart';

// route builder for pages with modal views
Route<T> customRouteBuilder<T>(
  BuildContext context,
  Widget widget,
  CustomPage page,
) =>
    MaterialWithModalsPageRoute<T>(
      builder: (context) => widget,
      settings: page,
      maintainState: page.maintainState,
      fullscreenDialog: page.fullscreenDialog,
    );

@CustomAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      customRouteBuilder: customRouteBuilder,
      page: AuthFlow,
    ),
    CustomRoute(
      page: MainFlow,
      children: [
        CustomRoute(
          initial: true,
          page: HomePage,
        ),
        CustomRoute(
          customRouteBuilder: customRouteBuilder,
          page: SettingsPage,
        ),
        CupertinoRoute(
          page: PrivacyPolicyPage,
        ),
        CupertinoRoute(
          page: ContactPage,
        ),
        CupertinoRoute(
          page: GameInvitationsPage,
        ),
        CupertinoRoute(
          page: FriendsFlow,
          children: [
            CustomRoute(
              initial: true,
              customRouteBuilder: customRouteBuilder,
              page: friends_overview.OverviewPage,
            ),
            CustomRoute(
              page: friends_profile.ProfilePage,
              reverseDurationInMilliseconds: 0,
            ),
          ],
        ),
        CupertinoRoute(
          page: ProfilePage,
        ),
        CupertinoRoute(
          page: GameHistoryFlow,
          children: [
            CustomRoute(
              initial: true,
              page: game_history_overview.OverviewPage,
            ),
            CustomRoute(
              page: game_history_details.DetailsPage,
              reverseDurationInMilliseconds: 0,
            ),
          ],
        ),
        CupertinoRoute(
          page: GameFlow,
          children: [
            CustomRoute(
              initial: true,
              customRouteBuilder: customRouteBuilder,
              page: CreateGamePage,
            ),
            CustomRoute(
              customRouteBuilder: customRouteBuilder,
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

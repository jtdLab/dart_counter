import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:flutter/widgets.dart';

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
          page: LoadingPage,
        ),
        CustomRoute(
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
          page: InvitationsPage,
        ),
        CustomRoute(
          customRouteBuilder: customRouteBuilder,
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

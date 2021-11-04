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
import 'main/training/create_training/create_training_page.dart';
import 'main/training/in_training/in_training_page.dart';
import 'main/training/post_training/post_training_page.dart';
import 'main/training/training_flow.dart';

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
              name: 'FriendsOverviewPageRoute',
              path: 'friends-overview-page',
              customRouteBuilder: customRouteBuilder,
              page: friends_overview.OverviewPage,
            ),
            CupertinoRoute(
              name: 'FriendsProfilePageRoute',
              path: 'friends-profile-page',
              page: friends_profile.ProfilePage,
            ),
          ],
        ),
        CupertinoRoute(
          page: ProfilePage,
        ),
        CupertinoRoute(
          page: GameHistoryFlow,
          children: [
            CupertinoRoute(
              initial: true,
              name: 'GameHistoryOverviewPageRoute',
              path: 'game-history-overview-page',
              page: game_history_overview.OverviewPage,
            ),
            CupertinoRoute(
              name: 'GameHistoryDetailsPageRoute',
              path: 'game-history-details-page',
              page: game_history_details.DetailsPage,
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
        CupertinoRoute(
          page: TrainingFlow,
          children: [
            CupertinoRoute(
              initial: true,
              page: CreateTrainingPage,
            ),
            CupertinoRoute(
              page: InTrainingPage,
            ),
            CupertinoRoute(
              page: PostTrainingPage,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $Router {}

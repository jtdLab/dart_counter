import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/play/create_game/offline/create_offline_game_page.dart';
import 'package:dart_counter/presentation/ios/main/play/in_game/offline/in_offline_game_page.dart';
import 'package:dart_counter/presentation/ios/main/play/play_offline_flow.dart';

import 'auth/auth_flow.dart';
import 'main/contact/contact_page.dart';
import 'main/friends/friends_flow.dart';
import 'main/friends/overview/overview_page.dart' as friends_overview;
import 'main/friends/profile/profile_page.dart' as friends_profile;
import 'main/game_history/details/details_page.dart' as game_history_details;
import 'main/game_history/game_history_flow.dart';
import 'main/game_history/overview/overview_page.dart' as game_history_overview;
import 'main/game_invitations/game_invitations_page.dart';
import 'main/home/home_page.dart';
import 'main/main_flow.dart';
import 'main/play/create_game/online/create_online_game_page.dart';
import 'main/play/in_game/online/in_online_game_page.dart';
import 'main/play/play_online_flow.dart';
import 'main/play/post_game/post_game_page.dart';
import 'main/privacy_policy/privacy_policy_page.dart';
import 'main/profile/profile_page.dart';
import 'main/settings/settings_page.dart';
import 'main/training/create_training/create_training_page.dart';
import 'main/training/in_training/in_training_page.dart';
import 'main/training/post_training/post_training_page.dart';
import 'main/training/training_flow.dart';

/// Setup auto route.
///
/// For more info see: https://pub.dev/packages/auto_route
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
          page: PlayOfflineFlow,
          children: [
            CustomRoute(
              initial: true,
              customRouteBuilder: customRouteBuilder,
              page: CreateOfflineGamePage,
            ),
            CustomRoute(
              customRouteBuilder: customRouteBuilder,
              page: InOfflineGamePage,
            ),
            CupertinoRoute(
              page: PostGamePage,
            ),
          ],
        ),
        CupertinoRoute(
          page: PlayOnlineFlow,
          children: [
            CustomRoute(
              initial: true,
              customRouteBuilder: customRouteBuilder,
              page: CreateOnlineGamePage,
            ),
            CustomRoute(
              customRouteBuilder: customRouteBuilder,
              page: InOnlineGamePage,
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

/// Route builder for pages with modal views.
///
/// This is needed to get the correct visual ios effect (the background page gets zoom back
///
/// a little bit when a modal page gets pushed via modal bottom sheet).
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

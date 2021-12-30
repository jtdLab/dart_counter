import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/friends/overview/modals/more/more_modal.dart';
import 'package:dart_counter/presentation/ios/main/friends/overview/modals/search_user/search_user_modal.dart';
import 'package:dart_counter/presentation/ios/main/play/offline/in_game/in_offline_game_flow.dart';
import 'package:dart_counter/presentation/ios/main/play/online/in_game/modals/stats/online_stats_modal.dart';
import 'package:dart_counter/presentation/ios/main/play/shared/in_game/modals/advanced_settings/advanced_settings_modal.dart';
import 'package:dart_counter/presentation/ios/main/settings/modals/change_email/change_email_modal.dart';
import 'package:dart_counter/presentation/ios/main/settings/modals/change_email/initial/initial_page.dart';
import 'package:dart_counter/presentation/ios/main/settings/modals/change_password/change_password_modal.dart';
import 'package:dart_counter/presentation/ios/main/settings/modals/change_username/change_username_modal.dart';
import 'package:dart_counter/presentation/ios/main/settings/page/settings_page.dart';
import 'package:dart_counter/presentation/ios/main/settings/settings_flow.dart';

import 'auth/auth_flow.dart';
import 'main/contact/contact_page.dart';
import 'main/friends/friends_flow.dart';
import 'main/friends/overview/overview_flow.dart';
import 'main/friends/overview/page/overview_page.dart';
import 'main/friends/profile/profile_page.dart';
import 'main/game_history/details/details_page.dart';
import 'main/game_history/game_history_flow.dart';
import 'main/game_history/overview/overview_page.dart';
import 'main/game_invitations/game_invitations_page.dart';
import 'main/home/home_page.dart';
import 'main/main_flow.dart';
import 'main/play/offline/create_game/create_offline_game_flow.dart';
import 'main/play/offline/create_game/page/create_offline_game_page.dart';
import 'main/play/offline/in_game/modals/stats/offline_stats_modal.dart';
import 'main/play/offline/in_game/page/in_offline_game_page.dart';
import 'main/play/offline/play_offline_flow.dart';
import 'main/play/offline/post_game/post_offline_game_page.dart';
import 'main/play/online/create_game/create_online_game_flow.dart';
import 'main/play/online/create_game/page/create_online_game_page.dart';
import 'main/play/online/in_game/in_online_game_flow.dart';
import 'main/play/online/in_game/page/in_online_game_page.dart';
import 'main/play/online/play_online_flow.dart';
import 'main/play/online/post_game/post_online_game_page.dart';
import 'main/play/shared/create_game/modals/advanced_settings/advanced_settings_modal.dart';
import 'main/play/shared/in_game/modals/checkout_details/checkout_details_modal.dart';
import 'main/privacy_policy/privacy_policy_page.dart';
import 'main/profile/profile_page.dart';
import 'main/settings/modals/change_email/initial/initial_page.dart';
import 'main/settings/modals/change_email/success/success_page.dart';
import 'main/settings/modals/change_password/initial/initial_page.dart';
import 'main/settings/modals/change_password/success/success_page.dart';
import 'main/settings/modals/change_username/initial/initial_page.dart';
import 'main/settings/modals/change_username/success/success_page.dart';
import 'main/settings/modals/edit_profile_image/edit_profile_image_modal.dart';
import 'main/training/create_training/create_training_page.dart';
import 'main/training/in_training/in_training_page.dart';
import 'main/training/post_training/post_training_page.dart';
import 'main/training/training_flow.dart';

/// Setup auto route.
///
/// For more info see: https://pub.dev/packages/auto_route
@CustomAutoRouter(
  routes: <AutoRoute>[
    // TODO if possible to the same as pageview using autrouter
    CustomRoute(
      customRouteBuilder: modalParentRouteBuilder,
      page: AuthFlow,
    ),
    CustomRoute(
      page: MainFlow,
      children: [
        CustomRoute(
          initial: true,
          page: HomePage,
        ),
        CupertinoRoute(
          page: SettingsFlow,
          children: [
            CustomRoute(
              initial: true,
              customRouteBuilder: modalParentRouteBuilder,
              page: SettingsPage,
            ),
            CustomRoute(
              customRouteBuilder: expandedModalRouteBuilder,
              page: ChangeEmailModal,
              children: [
                CustomRoute(
                  initial: true,
                  page: ChangeEmailInitialPage,
                ),
                CustomRoute(
                  page: ChangeEmailSuccessPage,
                ),
              ],
            ),
            CustomRoute(
              customRouteBuilder: expandedModalRouteBuilder,
              page: ChangePasswordModal,
              children: [
                CustomRoute(
                  initial: true,
                  page: ChangePasswordInitialPage,
                ),
                CustomRoute(
                  page: ChangePasswordSuccessPage,
                ),
              ],
            ),
            CustomRoute(
              customRouteBuilder: expandedModalRouteBuilder,
              page: ChangeUsernameModal,
              children: [
                CustomRoute(
                  initial: true,
                  page: ChangeUsernameInitialPage,
                ),
                CustomRoute(
                  page: ChangeUsernameSuccessPage,
                ),
              ],
            ),
            CustomRoute(
              customRouteBuilder: notExpandedModalRouteBuilder,
              page: EditProfileImageModal,
            ),
          ],
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
            CupertinoRoute(
              initial: true,
              page: FriendsOverviewFlow,
              children: [
                CustomRoute(
                  initial: true,
                  customRouteBuilder: modalParentRouteBuilder,
                  page: FriendsOverviewPage,
                ),
                CustomRoute(
                  customRouteBuilder: notExpandedModalRouteBuilder,
                  page: MoreModal,
                ),
                CustomRoute(
                  customRouteBuilder: expandedModalRouteBuilder,
                  page: SearchUserModal,
                ),
              ],
            ),
            CupertinoRoute(
              page: FriendsProfilePage,
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
              page: GameHistoryOverviewPage,
            ),
            CupertinoRoute(
              page: GameHistoryDetailsPage,
            ),
          ],
        ),
        CupertinoRoute(
          page: PlayOfflineFlow,
          children: [
            CustomRoute(
              initial: true,
              page: CreateOfflineGameFlow,
              children: [
                CustomRoute(
                  initial: true,
                  customRouteBuilder: modalParentRouteBuilder,
                  page: CreateOfflineGamePage,
                ),
                CustomRoute(
                  customRouteBuilder: notExpandedModalRouteBuilder,
                  page: CreateGameAdvancedSettingsModal,
                ),
              ],
            ),
            CupertinoRoute(
              page: InOfflineGameFlow,
              children: [
                CustomRoute(
                  initial: true,
                  customRouteBuilder: modalParentRouteBuilder,
                  page: InOfflineGamePage,
                ),
                CustomRoute(
                  customRouteBuilder: expandedModalRouteBuilder,
                  page: CheckoutDetailsModal,
                ),
                CustomRoute(
                  customRouteBuilder: expandedModalRouteBuilder,
                  page: OfflineStatsModal,
                ),
                CustomRoute(
                  customRouteBuilder: expandedModalRouteBuilder,
                  page: AdvancedSettingsModal,
                ),
              ],
            ),
            CupertinoRoute(
              page: PostOfflineGamePage,
            ),
          ],
        ),
        CupertinoRoute(
          page: PlayOnlineFlow,
          children: [
            CustomRoute(
              initial: true,
              page: CreateOnlineGameFlow,
              children: [
                CustomRoute(
                  initial: true,
                  customRouteBuilder: modalParentRouteBuilder,
                  page: CreateOnlineGamePage,
                ),
                CustomRoute(
                  customRouteBuilder: notExpandedModalRouteBuilder,
                  page: CreateGameAdvancedSettingsModal,
                ),
              ],
            ),
            CupertinoRoute(
              page: InOnlineGameFlow,
              children: [
                CustomRoute(
                  initial: true,
                  customRouteBuilder: modalParentRouteBuilder,
                  page: InOnlineGamePage,
                ),
                CustomRoute(
                  customRouteBuilder: expandedModalRouteBuilder,
                  page: CheckoutDetailsModal,
                ),
                CustomRoute(
                  customRouteBuilder: expandedModalRouteBuilder,
                  page: OnlineStatsModal,
                ),
                CustomRoute(
                  customRouteBuilder: expandedModalRouteBuilder,
                  page: AdvancedSettingsModal,
                ),
              ],
            ),
            CupertinoRoute(
              page: PostOnlineGamePage,
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

// TODO maybe move the following part into seperate file??

/// Route builder for pages with modal views.
///
/// This is needed to get the correct visual ios effect (the background page gets zoom back
///
/// a little bit when a modal page gets pushed via modal bottom sheet).
Route<T> modalParentRouteBuilder<T>(
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

Route<T> expandedModalRouteBuilder<T>(
  BuildContext context,
  Widget widget,
  CustomPage page,
) =>
    _modalRouteBuilder(context, widget, page, true);

Route<T> notExpandedModalRouteBuilder<T>(
  BuildContext context,
  Widget widget,
  CustomPage page,
) =>
    _modalRouteBuilder(context, widget, page, false);

Route<T> _modalRouteBuilder<T>(
  BuildContext context,
  Widget widget,
  CustomPage page,
  bool expand,
) =>
    CupertinoModalBottomSheetRoute<T>(
      builder: (context) => widget,
      containerBuilder: (context, _, child) => _CupertinoBottomSheetContainer(
        topRadius: _kDefaultTopRadius,
        child: child,
      ),
      expanded: expand,
      barrierLabel: '',
      isDismissible: !expand,
      modalBarrierColor: Colors.black12,
      settings: page,
      transitionBackgroundColor: Colors.black,
    );

// TODO move to presentation
///
/// Container for modal
///
const double _kPreviousPageVisibleOffset = 10;

const Radius _kDefaultTopRadius = Radius.circular(12);
const BoxShadow _kDefaultBoxShadow =
    BoxShadow(blurRadius: 10, color: Colors.black12, spreadRadius: 5);

/// Cupertino Bottom Sheet Container
///
/// Clip the child widget to rectangle with top rounded corners and adds
/// top padding(+safe area padding). This padding [_kPreviousPageVisibleOffset]
/// is the height that will be displayed from previous route.
class _CupertinoBottomSheetContainer extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final Radius topRadius;
  final BoxShadow? shadow;

  const _CupertinoBottomSheetContainer({
    Key? key,
    required this.child,
    this.backgroundColor,
    required this.topRadius,
    this.shadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topSafeAreaPadding = MediaQuery.of(context).padding.top;
    final topPadding = _kPreviousPageVisibleOffset + topSafeAreaPadding;

    final _shadow = shadow ?? _kDefaultBoxShadow;

    final _backgroundColor =
        backgroundColor ?? CupertinoTheme.of(context).scaffoldBackgroundColor;
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: topRadius),
        child: Container(
          decoration:
              BoxDecoration(color: _backgroundColor, boxShadow: [_shadow]),
          width: double.infinity,
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true, //Remove top Safe Area
            child: child,
          ),
        ),
      ),
    );
  }
}

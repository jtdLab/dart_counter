// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i63;
import 'package:flutter/material.dart' as _i64;

import '../../application/main/game_history/game_history_bloc.dart' as _i67;
import '../../application/main/play/shared/in_game/checkout_details/checkout_details_event.dart'
    as _i68;
import '../../application/main/play/shared/in_game/checkout_details/checkout_details_state.dart'
    as _i69;
import '../../domain/play/abstract_player_snapshot.dart' as _i70;
import 'auth/auth_flow.dart' as _i1;
import 'auth/modals/forgot_password/forgot_password_modal.dart' as _i4;
import 'auth/modals/forgot_password/initial/initial_page.dart' as _i5;
import 'auth/modals/forgot_password/success/success_page.dart' as _i6;
import 'auth/page/auth_page.dart' as _i3;
import 'core/core.dart' as _i66;
import 'main/contact/contact_page.dart' as _i10;
import 'main/friends/friends_flow.dart' as _i12;
import 'main/friends/overview/modals/more/more_modal.dart' as _i32;
import 'main/friends/overview/modals/search_user/search_user_modal.dart'
    as _i33;
import 'main/friends/overview/overview_flow.dart' as _i29;
import 'main/friends/overview/page/overview_page.dart' as _i31;
import 'main/friends/profile/profile_page.dart' as _i30;
import 'main/game_history/details/details_page.dart' as _i35;
import 'main/game_history/game_history_flow.dart' as _i14;
import 'main/game_history/overview/overview_page.dart' as _i34;
import 'main/game_invitations/game_invitations_page.dart' as _i11;
import 'main/home/home_page.dart' as _i7;
import 'main/main_flow.dart' as _i2;
import 'main/play/offline/create_game/create_offline_game_flow.dart' as _i36;
import 'main/play/offline/create_game/page/create_offline_game_page.dart'
    as _i39;
import 'main/play/offline/in_game/in_offline_game_flow.dart' as _i37;
import 'main/play/offline/in_game/modals/stats/offline_stats_modal.dart'
    as _i44;
import 'main/play/offline/in_game/page/in_offline_game_page.dart' as _i42;
import 'main/play/offline/play_offline_flow.dart' as _i15;
import 'main/play/offline/post_game/post_offline_game_page.dart' as _i38;
import 'main/play/online/create_game/create_online_game_flow.dart' as _i46;
import 'main/play/online/create_game/page/create_online_game_page.dart' as _i49;
import 'main/play/online/in_game/in_online_game_flow.dart' as _i47;
import 'main/play/online/in_game/modals/stats/online_stats_modal.dart' as _i51;
import 'main/play/online/in_game/page/in_online_game_page.dart' as _i50;
import 'main/play/online/play_online_flow.dart' as _i16;
import 'main/play/online/post_game/post_online_game_page.dart' as _i48;
import 'main/play/shared/create_game/modals/advanced_settings/advanced_settings_modal.dart'
    as _i40;
import 'main/play/shared/in_game/modals/advanced_settings/advanced_settings_modal.dart'
    as _i45;
import 'main/play/shared/in_game/modals/checkout_details/checkout_details_modal.dart'
    as _i43;
import 'main/privacy_policy/privacy_policy_page.dart' as _i9;
import 'main/profile/profile_page.dart' as _i13;
import 'main/settings/modals/change_email/change_email_modal.dart' as _i19;
import 'main/settings/modals/change_email/initial/initial_page.dart' as _i23;
import 'main/settings/modals/change_email/success/success_page.dart' as _i24;
import 'main/settings/modals/change_password/change_password_modal.dart'
    as _i20;
import 'main/settings/modals/change_password/initial/initial_page.dart' as _i25;
import 'main/settings/modals/change_password/success/success_page.dart' as _i26;
import 'main/settings/modals/change_username/change_username_modal.dart'
    as _i21;
import 'main/settings/modals/change_username/initial/initial_page.dart' as _i27;
import 'main/settings/modals/change_username/success/success_page.dart' as _i28;
import 'main/settings/modals/edit_profile_image/edit_profile_image_modal.dart'
    as _i22;
import 'main/settings/page/settings_page.dart' as _i18;
import 'main/settings/settings_flow.dart' as _i8;
import 'main/shared/widgets.dart' as _i41;
import 'main/training/create_training/create_training_flow.dart' as _i52;
import 'main/training/create_training/page/create_training_page.dart' as _i58;
import 'main/training/in_training/bobs_twenty_seven/in_bobs_twenty_seven_training_flow.dart'
    as _i53;
import 'main/training/in_training/bobs_twenty_seven/page/in_bobs_twenty_seven_training_page.dart'
    as _i59;
import 'main/training/in_training/double/in_double_training_flow.dart' as _i56;
import 'main/training/in_training/double/page/in_double_training_page.dart'
    as _i62;
import 'main/training/in_training/score/in_score_training_flow.dart' as _i54;
import 'main/training/in_training/score/page/in_score_training_page.dart'
    as _i60;
import 'main/training/in_training/single/in_single_training_flow.dart' as _i55;
import 'main/training/in_training/single/page/in_single_training_page.dart'
    as _i61;
import 'main/training/post_training/post_training_page.dart' as _i57;
import 'main/training/training_flow.dart' as _i17;
import 'router.dart' as _i65;

class Router extends _i63.RootStackRouter {
  Router([_i64.GlobalKey<_i64.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i63.PageFactory> pagesMap = {
    AuthFlowRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.AuthFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    MainFlowRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.MainFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    AuthPageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.AuthPage(),
          customRouteBuilder: _i65.modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ForgotPasswordModalRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.ForgotPasswordModal(),
          customRouteBuilder: _i65.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ForgotPasswordInitialPageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.ForgotPasswordInitialPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ForgotPasswordSuccessPageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.ForgotPasswordSuccessPage(),
          opaque: true,
          barrierDismissible: false);
    },
    HomePageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: _i7.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    SettingsFlowRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i8.SettingsFlow());
    },
    PrivacyPolicyPageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.PrivacyPolicyPage());
    },
    ContactPageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i10.ContactPage());
    },
    GameInvitationsPageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i11.GameInvitationsPage());
    },
    FriendsFlowRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i12.FriendsFlow());
    },
    ProfilePageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i13.ProfilePage());
    },
    GameHistoryFlowRoute.name: (routeData) {
      final args = routeData.argsAs<GameHistoryFlowRouteArgs>();
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i14.GameHistoryFlow(
              key: args.key, gameHistoryBloc: args.gameHistoryBloc));
    },
    PlayOfflineFlowRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i15.PlayOfflineFlow());
    },
    PlayOnlineFlowRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i16.PlayOnlineFlow());
    },
    TrainingFlowRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i17.TrainingFlow());
    },
    SettingsPageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i18.SettingsPage(),
          customRouteBuilder: _i65.modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ChangeEmailModalRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i19.ChangeEmailModal(),
          customRouteBuilder: _i65.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ChangePasswordModalRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i20.ChangePasswordModal(),
          customRouteBuilder: _i65.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ChangeUsernameModalRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i21.ChangeUsernameModal(),
          customRouteBuilder: _i65.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    EditProfileImageModalRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: _i22.EditProfileImageModal(),
          customRouteBuilder: _i65.notExpandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ChangeEmailInitialPageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i23.ChangeEmailInitialPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangeEmailSuccessPageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i24.ChangeEmailSuccessPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangePasswordInitialPageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i25.ChangePasswordInitialPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangePasswordSuccessPageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i26.ChangePasswordSuccessPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangeUsernameInitialPageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i27.ChangeUsernameInitialPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangeUsernameSuccessPageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i28.ChangeUsernameSuccessPage(),
          opaque: true,
          barrierDismissible: false);
    },
    FriendsOverviewFlowRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i29.FriendsOverviewFlow());
    },
    FriendsProfilePageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i30.FriendsProfilePage());
    },
    FriendsOverviewPageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i31.FriendsOverviewPage(),
          customRouteBuilder: _i65.modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    MoreModalRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: _i32.MoreModal(),
          customRouteBuilder: _i65.notExpandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    SearchUserModalRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i33.SearchUserModal(),
          customRouteBuilder: _i65.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    GameHistoryOverviewPageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i34.GameHistoryOverviewPage());
    },
    GameHistoryDetailsPageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i35.GameHistoryDetailsPage());
    },
    CreateOfflineGameFlowRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i36.CreateOfflineGameFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    InOfflineGameFlowRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i37.InOfflineGameFlow());
    },
    PostOfflineGamePageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i38.PostOfflineGamePage());
    },
    CreateOfflineGamePageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i39.CreateOfflineGamePage(),
          customRouteBuilder: _i65.modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CreateGameAdvancedSettingsModalRoute.name: (routeData) {
      final args = routeData.argsAs<CreateGameAdvancedSettingsModalRouteArgs>();
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: _i40.CreateGameAdvancedSettingsModal(
              key: args.key, index: args.index),
          customRouteBuilder: _i65.notExpandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    YouReallyWantToCancelGameDialogRoute.name: (routeData) {
      final args = routeData.argsAs<YouReallyWantToCancelGameDialogRouteArgs>();
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: _i41.YouReallyWantToCancelGameDialog(
              key: args.key, onYesPressed: args.onYesPressed),
          reverseDurationInMilliseconds: 0,
          opaque: false,
          barrierDismissible: false);
    },
    InOfflineGamePageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i42.InOfflineGamePage(),
          customRouteBuilder: _i65.modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CheckoutDetailsModalRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutDetailsModalRouteArgs>();
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: _i43.CheckoutDetailsModal(key: args.key, bloc: args.bloc),
          customRouteBuilder: _i65.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    OfflineStatsModalRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i44.OfflineStatsModal(),
          customRouteBuilder: _i65.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    AdvancedSettingsModalRoute.name: (routeData) {
      final args = routeData.argsAs<AdvancedSettingsModalRouteArgs>();
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child:
              _i45.AdvancedSettingsModal(key: args.key, players: args.players),
          customRouteBuilder: _i65.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CreateOnlineGameFlowRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i46.CreateOnlineGameFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    InOnlineGameFlowRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i47.InOnlineGameFlow());
    },
    PostOnlineGamePageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i48.PostOnlineGamePage());
    },
    CreateOnlineGamePageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i49.CreateOnlineGamePage(),
          customRouteBuilder: _i65.modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    InOnlineGamePageRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i50.InOnlineGamePage(),
          customRouteBuilder: _i65.modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    OnlineStatsModalRoute.name: (routeData) {
      return _i63.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i51.OnlineStatsModal(),
          customRouteBuilder: _i65.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CreateTrainingFlowRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i52.CreateTrainingFlow());
    },
    InBobsTwentySevenTrainingFlowRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: const _i53.InBobsTwentySevenTrainingFlow());
    },
    InScoreTrainingFlowRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i54.InScoreTrainingFlow());
    },
    InSingleTrainingFlowRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i55.InSingleTrainingFlow());
    },
    InDoubleTrainingFlowRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i56.InDoubleTrainingFlow());
    },
    PostTrainingPageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i57.PostTrainingPage());
    },
    CreateTrainingPageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i58.CreateTrainingPage());
    },
    InBobsTwentySeventTrainingPageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: const _i59.InBobsTwentySeventTrainingPage());
    },
    InScoreTrainingPageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i60.InScoreTrainingPage());
    },
    InSingleTrainingPageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i61.InSingleTrainingPage());
    },
    InDoubleTrainingPageRoute.name: (routeData) {
      return _i63.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i62.InDoubleTrainingPage());
    }
  };

  @override
  List<_i63.RouteConfig> get routes => [
        _i63.RouteConfig(AuthFlowRoute.name, path: '/auth-flow', children: [
          _i63.RouteConfig(AuthPageRoute.name,
              path: '', parent: AuthFlowRoute.name),
          _i63.RouteConfig(ForgotPasswordModalRoute.name,
              path: 'forgot-password-modal',
              parent: AuthFlowRoute.name,
              children: [
                _i63.RouteConfig(ForgotPasswordInitialPageRoute.name,
                    path: '', parent: ForgotPasswordModalRoute.name),
                _i63.RouteConfig(ForgotPasswordSuccessPageRoute.name,
                    path: 'forgot-password-success-page',
                    parent: ForgotPasswordModalRoute.name)
              ])
        ]),
        _i63.RouteConfig(MainFlowRoute.name, path: '/main-flow', children: [
          _i63.RouteConfig(HomePageRoute.name,
              path: '', parent: MainFlowRoute.name),
          _i63.RouteConfig(SettingsFlowRoute.name,
              path: 'settings-flow',
              parent: MainFlowRoute.name,
              children: [
                _i63.RouteConfig(SettingsPageRoute.name,
                    path: '', parent: SettingsFlowRoute.name),
                _i63.RouteConfig(ChangeEmailModalRoute.name,
                    path: 'change-email-modal',
                    parent: SettingsFlowRoute.name,
                    children: [
                      _i63.RouteConfig(ChangeEmailInitialPageRoute.name,
                          path: '', parent: ChangeEmailModalRoute.name),
                      _i63.RouteConfig(ChangeEmailSuccessPageRoute.name,
                          path: 'change-email-success-page',
                          parent: ChangeEmailModalRoute.name)
                    ]),
                _i63.RouteConfig(ChangePasswordModalRoute.name,
                    path: 'change-password-modal',
                    parent: SettingsFlowRoute.name,
                    children: [
                      _i63.RouteConfig(ChangePasswordInitialPageRoute.name,
                          path: '', parent: ChangePasswordModalRoute.name),
                      _i63.RouteConfig(ChangePasswordSuccessPageRoute.name,
                          path: 'change-password-success-page',
                          parent: ChangePasswordModalRoute.name)
                    ]),
                _i63.RouteConfig(ChangeUsernameModalRoute.name,
                    path: 'change-username-modal',
                    parent: SettingsFlowRoute.name,
                    children: [
                      _i63.RouteConfig(ChangeUsernameInitialPageRoute.name,
                          path: '', parent: ChangeUsernameModalRoute.name),
                      _i63.RouteConfig(ChangeUsernameSuccessPageRoute.name,
                          path: 'change-username-success-page',
                          parent: ChangeUsernameModalRoute.name)
                    ]),
                _i63.RouteConfig(EditProfileImageModalRoute.name,
                    path: 'edit-profile-image-modal',
                    parent: SettingsFlowRoute.name)
              ]),
          _i63.RouteConfig(PrivacyPolicyPageRoute.name,
              path: 'privacy-policy-page', parent: MainFlowRoute.name),
          _i63.RouteConfig(ContactPageRoute.name,
              path: 'contact-page', parent: MainFlowRoute.name),
          _i63.RouteConfig(GameInvitationsPageRoute.name,
              path: 'game-invitations-page', parent: MainFlowRoute.name),
          _i63.RouteConfig(FriendsFlowRoute.name,
              path: 'friends-flow',
              parent: MainFlowRoute.name,
              children: [
                _i63.RouteConfig(FriendsOverviewFlowRoute.name,
                    path: '',
                    parent: FriendsFlowRoute.name,
                    children: [
                      _i63.RouteConfig(FriendsOverviewPageRoute.name,
                          path: '', parent: FriendsOverviewFlowRoute.name),
                      _i63.RouteConfig(MoreModalRoute.name,
                          path: 'more-modal',
                          parent: FriendsOverviewFlowRoute.name),
                      _i63.RouteConfig(SearchUserModalRoute.name,
                          path: 'search-user-modal',
                          parent: FriendsOverviewFlowRoute.name)
                    ]),
                _i63.RouteConfig(FriendsProfilePageRoute.name,
                    path: 'friends-profile-page', parent: FriendsFlowRoute.name)
              ]),
          _i63.RouteConfig(ProfilePageRoute.name,
              path: 'profile-page', parent: MainFlowRoute.name),
          _i63.RouteConfig(GameHistoryFlowRoute.name,
              path: 'game-history-flow',
              parent: MainFlowRoute.name,
              children: [
                _i63.RouteConfig(GameHistoryOverviewPageRoute.name,
                    path: '', parent: GameHistoryFlowRoute.name),
                _i63.RouteConfig(GameHistoryDetailsPageRoute.name,
                    path: 'game-history-details-page',
                    parent: GameHistoryFlowRoute.name)
              ]),
          _i63.RouteConfig(PlayOfflineFlowRoute.name,
              path: 'play-offline-flow',
              parent: MainFlowRoute.name,
              children: [
                _i63.RouteConfig(CreateOfflineGameFlowRoute.name,
                    path: '',
                    parent: PlayOfflineFlowRoute.name,
                    children: [
                      _i63.RouteConfig(CreateOfflineGamePageRoute.name,
                          path: '', parent: CreateOfflineGameFlowRoute.name),
                      _i63.RouteConfig(
                          CreateGameAdvancedSettingsModalRoute.name,
                          path: 'create-game-advanced-settings-modal',
                          parent: CreateOfflineGameFlowRoute.name),
                      _i63.RouteConfig(
                          YouReallyWantToCancelGameDialogRoute.name,
                          path: 'you-really-want-to-cancel-game-dialog',
                          parent: CreateOfflineGameFlowRoute.name)
                    ]),
                _i63.RouteConfig(InOfflineGameFlowRoute.name,
                    path: 'in-offline-game-flow',
                    parent: PlayOfflineFlowRoute.name,
                    children: [
                      _i63.RouteConfig(InOfflineGamePageRoute.name,
                          path: '', parent: InOfflineGameFlowRoute.name),
                      _i63.RouteConfig(CheckoutDetailsModalRoute.name,
                          path: 'checkout-details-modal',
                          parent: InOfflineGameFlowRoute.name),
                      _i63.RouteConfig(OfflineStatsModalRoute.name,
                          path: 'offline-stats-modal',
                          parent: InOfflineGameFlowRoute.name),
                      _i63.RouteConfig(AdvancedSettingsModalRoute.name,
                          path: 'advanced-settings-modal',
                          parent: InOfflineGameFlowRoute.name),
                      _i63.RouteConfig(
                          YouReallyWantToCancelGameDialogRoute.name,
                          path: 'you-really-want-to-cancel-game-dialog',
                          parent: InOfflineGameFlowRoute.name)
                    ]),
                _i63.RouteConfig(PostOfflineGamePageRoute.name,
                    path: 'post-offline-game-page',
                    parent: PlayOfflineFlowRoute.name)
              ]),
          _i63.RouteConfig(PlayOnlineFlowRoute.name,
              path: 'play-online-flow',
              parent: MainFlowRoute.name,
              children: [
                _i63.RouteConfig(CreateOnlineGameFlowRoute.name,
                    path: '',
                    parent: PlayOnlineFlowRoute.name,
                    children: [
                      _i63.RouteConfig(CreateOnlineGamePageRoute.name,
                          path: '', parent: CreateOnlineGameFlowRoute.name),
                      _i63.RouteConfig(
                          CreateGameAdvancedSettingsModalRoute.name,
                          path: 'create-game-advanced-settings-modal',
                          parent: CreateOnlineGameFlowRoute.name),
                      _i63.RouteConfig(
                          YouReallyWantToCancelGameDialogRoute.name,
                          path: 'you-really-want-to-cancel-game-dialog',
                          parent: CreateOnlineGameFlowRoute.name)
                    ]),
                _i63.RouteConfig(InOnlineGameFlowRoute.name,
                    path: 'in-online-game-flow',
                    parent: PlayOnlineFlowRoute.name,
                    children: [
                      _i63.RouteConfig(InOnlineGamePageRoute.name,
                          path: '', parent: InOnlineGameFlowRoute.name),
                      _i63.RouteConfig(CheckoutDetailsModalRoute.name,
                          path: 'checkout-details-modal',
                          parent: InOnlineGameFlowRoute.name),
                      _i63.RouteConfig(OnlineStatsModalRoute.name,
                          path: 'online-stats-modal',
                          parent: InOnlineGameFlowRoute.name),
                      _i63.RouteConfig(AdvancedSettingsModalRoute.name,
                          path: 'advanced-settings-modal',
                          parent: InOnlineGameFlowRoute.name),
                      _i63.RouteConfig(
                          YouReallyWantToCancelGameDialogRoute.name,
                          path: 'you-really-want-to-cancel-game-dialog',
                          parent: InOnlineGameFlowRoute.name)
                    ]),
                _i63.RouteConfig(PostOnlineGamePageRoute.name,
                    path: 'post-online-game-page',
                    parent: PlayOnlineFlowRoute.name)
              ]),
          _i63.RouteConfig(TrainingFlowRoute.name,
              path: 'training-flow',
              parent: MainFlowRoute.name,
              children: [
                _i63.RouteConfig(CreateTrainingFlowRoute.name,
                    path: '',
                    parent: TrainingFlowRoute.name,
                    children: [
                      _i63.RouteConfig(CreateTrainingPageRoute.name,
                          path: '', parent: CreateTrainingFlowRoute.name),
                      _i63.RouteConfig(
                          YouReallyWantToCancelGameDialogRoute.name,
                          path: 'you-really-want-to-cancel-game-dialog',
                          parent: CreateTrainingFlowRoute.name)
                    ]),
                _i63.RouteConfig(InBobsTwentySevenTrainingFlowRoute.name,
                    path: 'in-bobs-twenty-seven-training-flow',
                    parent: TrainingFlowRoute.name,
                    children: [
                      _i63.RouteConfig(InBobsTwentySeventTrainingPageRoute.name,
                          path: '',
                          parent: InBobsTwentySevenTrainingFlowRoute.name),
                      _i63.RouteConfig(
                          YouReallyWantToCancelGameDialogRoute.name,
                          path: 'you-really-want-to-cancel-game-dialog',
                          parent: InBobsTwentySevenTrainingFlowRoute.name)
                    ]),
                _i63.RouteConfig(InScoreTrainingFlowRoute.name,
                    path: 'in-score-training-flow',
                    parent: TrainingFlowRoute.name,
                    children: [
                      _i63.RouteConfig(InScoreTrainingPageRoute.name,
                          path: '', parent: InScoreTrainingFlowRoute.name),
                      _i63.RouteConfig(
                          YouReallyWantToCancelGameDialogRoute.name,
                          path: 'you-really-want-to-cancel-game-dialog',
                          parent: InScoreTrainingFlowRoute.name)
                    ]),
                _i63.RouteConfig(InSingleTrainingFlowRoute.name,
                    path: 'in-single-training-flow',
                    parent: TrainingFlowRoute.name,
                    children: [
                      _i63.RouteConfig(InSingleTrainingPageRoute.name,
                          path: '', parent: InSingleTrainingFlowRoute.name),
                      _i63.RouteConfig(
                          YouReallyWantToCancelGameDialogRoute.name,
                          path: 'you-really-want-to-cancel-game-dialog',
                          parent: InSingleTrainingFlowRoute.name)
                    ]),
                _i63.RouteConfig(InDoubleTrainingFlowRoute.name,
                    path: 'in-double-training-flow',
                    parent: TrainingFlowRoute.name,
                    children: [
                      _i63.RouteConfig(InDoubleTrainingPageRoute.name,
                          path: '', parent: InDoubleTrainingFlowRoute.name),
                      _i63.RouteConfig(
                          YouReallyWantToCancelGameDialogRoute.name,
                          path: 'you-really-want-to-cancel-game-dialog',
                          parent: InDoubleTrainingFlowRoute.name)
                    ]),
                _i63.RouteConfig(PostTrainingPageRoute.name,
                    path: 'post-training-page', parent: TrainingFlowRoute.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.AuthFlow]
class AuthFlowRoute extends _i63.PageRouteInfo<void> {
  const AuthFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(AuthFlowRoute.name,
            path: '/auth-flow', initialChildren: children);

  static const String name = 'AuthFlowRoute';
}

/// generated route for
/// [_i2.MainFlow]
class MainFlowRoute extends _i63.PageRouteInfo<void> {
  const MainFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(MainFlowRoute.name,
            path: '/main-flow', initialChildren: children);

  static const String name = 'MainFlowRoute';
}

/// generated route for
/// [_i3.AuthPage]
class AuthPageRoute extends _i63.PageRouteInfo<void> {
  const AuthPageRoute() : super(AuthPageRoute.name, path: '');

  static const String name = 'AuthPageRoute';
}

/// generated route for
/// [_i4.ForgotPasswordModal]
class ForgotPasswordModalRoute extends _i63.PageRouteInfo<void> {
  const ForgotPasswordModalRoute({List<_i63.PageRouteInfo>? children})
      : super(ForgotPasswordModalRoute.name,
            path: 'forgot-password-modal', initialChildren: children);

  static const String name = 'ForgotPasswordModalRoute';
}

/// generated route for
/// [_i5.ForgotPasswordInitialPage]
class ForgotPasswordInitialPageRoute extends _i63.PageRouteInfo<void> {
  const ForgotPasswordInitialPageRoute()
      : super(ForgotPasswordInitialPageRoute.name, path: '');

  static const String name = 'ForgotPasswordInitialPageRoute';
}

/// generated route for
/// [_i6.ForgotPasswordSuccessPage]
class ForgotPasswordSuccessPageRoute extends _i63.PageRouteInfo<void> {
  const ForgotPasswordSuccessPageRoute()
      : super(ForgotPasswordSuccessPageRoute.name,
            path: 'forgot-password-success-page');

  static const String name = 'ForgotPasswordSuccessPageRoute';
}

/// generated route for
/// [_i7.HomePage]
class HomePageRoute extends _i63.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i8.SettingsFlow]
class SettingsFlowRoute extends _i63.PageRouteInfo<void> {
  const SettingsFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(SettingsFlowRoute.name,
            path: 'settings-flow', initialChildren: children);

  static const String name = 'SettingsFlowRoute';
}

/// generated route for
/// [_i9.PrivacyPolicyPage]
class PrivacyPolicyPageRoute extends _i63.PageRouteInfo<void> {
  const PrivacyPolicyPageRoute()
      : super(PrivacyPolicyPageRoute.name, path: 'privacy-policy-page');

  static const String name = 'PrivacyPolicyPageRoute';
}

/// generated route for
/// [_i10.ContactPage]
class ContactPageRoute extends _i63.PageRouteInfo<void> {
  const ContactPageRoute() : super(ContactPageRoute.name, path: 'contact-page');

  static const String name = 'ContactPageRoute';
}

/// generated route for
/// [_i11.GameInvitationsPage]
class GameInvitationsPageRoute extends _i63.PageRouteInfo<void> {
  const GameInvitationsPageRoute()
      : super(GameInvitationsPageRoute.name, path: 'game-invitations-page');

  static const String name = 'GameInvitationsPageRoute';
}

/// generated route for
/// [_i12.FriendsFlow]
class FriendsFlowRoute extends _i63.PageRouteInfo<void> {
  const FriendsFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(FriendsFlowRoute.name,
            path: 'friends-flow', initialChildren: children);

  static const String name = 'FriendsFlowRoute';
}

/// generated route for
/// [_i13.ProfilePage]
class ProfilePageRoute extends _i63.PageRouteInfo<void> {
  const ProfilePageRoute() : super(ProfilePageRoute.name, path: 'profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i14.GameHistoryFlow]
class GameHistoryFlowRoute
    extends _i63.PageRouteInfo<GameHistoryFlowRouteArgs> {
  GameHistoryFlowRoute(
      {_i66.Key? key,
      required _i67.GameHistoryBloc gameHistoryBloc,
      List<_i63.PageRouteInfo>? children})
      : super(GameHistoryFlowRoute.name,
            path: 'game-history-flow',
            args: GameHistoryFlowRouteArgs(
                key: key, gameHistoryBloc: gameHistoryBloc),
            initialChildren: children);

  static const String name = 'GameHistoryFlowRoute';
}

class GameHistoryFlowRouteArgs {
  const GameHistoryFlowRouteArgs({this.key, required this.gameHistoryBloc});

  final _i66.Key? key;

  final _i67.GameHistoryBloc gameHistoryBloc;

  @override
  String toString() {
    return 'GameHistoryFlowRouteArgs{key: $key, gameHistoryBloc: $gameHistoryBloc}';
  }
}

/// generated route for
/// [_i15.PlayOfflineFlow]
class PlayOfflineFlowRoute extends _i63.PageRouteInfo<void> {
  const PlayOfflineFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(PlayOfflineFlowRoute.name,
            path: 'play-offline-flow', initialChildren: children);

  static const String name = 'PlayOfflineFlowRoute';
}

/// generated route for
/// [_i16.PlayOnlineFlow]
class PlayOnlineFlowRoute extends _i63.PageRouteInfo<void> {
  const PlayOnlineFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(PlayOnlineFlowRoute.name,
            path: 'play-online-flow', initialChildren: children);

  static const String name = 'PlayOnlineFlowRoute';
}

/// generated route for
/// [_i17.TrainingFlow]
class TrainingFlowRoute extends _i63.PageRouteInfo<void> {
  const TrainingFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(TrainingFlowRoute.name,
            path: 'training-flow', initialChildren: children);

  static const String name = 'TrainingFlowRoute';
}

/// generated route for
/// [_i18.SettingsPage]
class SettingsPageRoute extends _i63.PageRouteInfo<void> {
  const SettingsPageRoute() : super(SettingsPageRoute.name, path: '');

  static const String name = 'SettingsPageRoute';
}

/// generated route for
/// [_i19.ChangeEmailModal]
class ChangeEmailModalRoute extends _i63.PageRouteInfo<void> {
  const ChangeEmailModalRoute({List<_i63.PageRouteInfo>? children})
      : super(ChangeEmailModalRoute.name,
            path: 'change-email-modal', initialChildren: children);

  static const String name = 'ChangeEmailModalRoute';
}

/// generated route for
/// [_i20.ChangePasswordModal]
class ChangePasswordModalRoute extends _i63.PageRouteInfo<void> {
  const ChangePasswordModalRoute({List<_i63.PageRouteInfo>? children})
      : super(ChangePasswordModalRoute.name,
            path: 'change-password-modal', initialChildren: children);

  static const String name = 'ChangePasswordModalRoute';
}

/// generated route for
/// [_i21.ChangeUsernameModal]
class ChangeUsernameModalRoute extends _i63.PageRouteInfo<void> {
  const ChangeUsernameModalRoute({List<_i63.PageRouteInfo>? children})
      : super(ChangeUsernameModalRoute.name,
            path: 'change-username-modal', initialChildren: children);

  static const String name = 'ChangeUsernameModalRoute';
}

/// generated route for
/// [_i22.EditProfileImageModal]
class EditProfileImageModalRoute extends _i63.PageRouteInfo<void> {
  const EditProfileImageModalRoute()
      : super(EditProfileImageModalRoute.name,
            path: 'edit-profile-image-modal');

  static const String name = 'EditProfileImageModalRoute';
}

/// generated route for
/// [_i23.ChangeEmailInitialPage]
class ChangeEmailInitialPageRoute extends _i63.PageRouteInfo<void> {
  const ChangeEmailInitialPageRoute()
      : super(ChangeEmailInitialPageRoute.name, path: '');

  static const String name = 'ChangeEmailInitialPageRoute';
}

/// generated route for
/// [_i24.ChangeEmailSuccessPage]
class ChangeEmailSuccessPageRoute extends _i63.PageRouteInfo<void> {
  const ChangeEmailSuccessPageRoute()
      : super(ChangeEmailSuccessPageRoute.name,
            path: 'change-email-success-page');

  static const String name = 'ChangeEmailSuccessPageRoute';
}

/// generated route for
/// [_i25.ChangePasswordInitialPage]
class ChangePasswordInitialPageRoute extends _i63.PageRouteInfo<void> {
  const ChangePasswordInitialPageRoute()
      : super(ChangePasswordInitialPageRoute.name, path: '');

  static const String name = 'ChangePasswordInitialPageRoute';
}

/// generated route for
/// [_i26.ChangePasswordSuccessPage]
class ChangePasswordSuccessPageRoute extends _i63.PageRouteInfo<void> {
  const ChangePasswordSuccessPageRoute()
      : super(ChangePasswordSuccessPageRoute.name,
            path: 'change-password-success-page');

  static const String name = 'ChangePasswordSuccessPageRoute';
}

/// generated route for
/// [_i27.ChangeUsernameInitialPage]
class ChangeUsernameInitialPageRoute extends _i63.PageRouteInfo<void> {
  const ChangeUsernameInitialPageRoute()
      : super(ChangeUsernameInitialPageRoute.name, path: '');

  static const String name = 'ChangeUsernameInitialPageRoute';
}

/// generated route for
/// [_i28.ChangeUsernameSuccessPage]
class ChangeUsernameSuccessPageRoute extends _i63.PageRouteInfo<void> {
  const ChangeUsernameSuccessPageRoute()
      : super(ChangeUsernameSuccessPageRoute.name,
            path: 'change-username-success-page');

  static const String name = 'ChangeUsernameSuccessPageRoute';
}

/// generated route for
/// [_i29.FriendsOverviewFlow]
class FriendsOverviewFlowRoute extends _i63.PageRouteInfo<void> {
  const FriendsOverviewFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(FriendsOverviewFlowRoute.name,
            path: '', initialChildren: children);

  static const String name = 'FriendsOverviewFlowRoute';
}

/// generated route for
/// [_i30.FriendsProfilePage]
class FriendsProfilePageRoute extends _i63.PageRouteInfo<void> {
  const FriendsProfilePageRoute()
      : super(FriendsProfilePageRoute.name, path: 'friends-profile-page');

  static const String name = 'FriendsProfilePageRoute';
}

/// generated route for
/// [_i31.FriendsOverviewPage]
class FriendsOverviewPageRoute extends _i63.PageRouteInfo<void> {
  const FriendsOverviewPageRoute()
      : super(FriendsOverviewPageRoute.name, path: '');

  static const String name = 'FriendsOverviewPageRoute';
}

/// generated route for
/// [_i32.MoreModal]
class MoreModalRoute extends _i63.PageRouteInfo<void> {
  const MoreModalRoute() : super(MoreModalRoute.name, path: 'more-modal');

  static const String name = 'MoreModalRoute';
}

/// generated route for
/// [_i33.SearchUserModal]
class SearchUserModalRoute extends _i63.PageRouteInfo<void> {
  const SearchUserModalRoute()
      : super(SearchUserModalRoute.name, path: 'search-user-modal');

  static const String name = 'SearchUserModalRoute';
}

/// generated route for
/// [_i34.GameHistoryOverviewPage]
class GameHistoryOverviewPageRoute extends _i63.PageRouteInfo<void> {
  const GameHistoryOverviewPageRoute()
      : super(GameHistoryOverviewPageRoute.name, path: '');

  static const String name = 'GameHistoryOverviewPageRoute';
}

/// generated route for
/// [_i35.GameHistoryDetailsPage]
class GameHistoryDetailsPageRoute extends _i63.PageRouteInfo<void> {
  const GameHistoryDetailsPageRoute()
      : super(GameHistoryDetailsPageRoute.name,
            path: 'game-history-details-page');

  static const String name = 'GameHistoryDetailsPageRoute';
}

/// generated route for
/// [_i36.CreateOfflineGameFlow]
class CreateOfflineGameFlowRoute extends _i63.PageRouteInfo<void> {
  const CreateOfflineGameFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(CreateOfflineGameFlowRoute.name,
            path: '', initialChildren: children);

  static const String name = 'CreateOfflineGameFlowRoute';
}

/// generated route for
/// [_i37.InOfflineGameFlow]
class InOfflineGameFlowRoute extends _i63.PageRouteInfo<void> {
  const InOfflineGameFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(InOfflineGameFlowRoute.name,
            path: 'in-offline-game-flow', initialChildren: children);

  static const String name = 'InOfflineGameFlowRoute';
}

/// generated route for
/// [_i38.PostOfflineGamePage]
class PostOfflineGamePageRoute extends _i63.PageRouteInfo<void> {
  const PostOfflineGamePageRoute()
      : super(PostOfflineGamePageRoute.name, path: 'post-offline-game-page');

  static const String name = 'PostOfflineGamePageRoute';
}

/// generated route for
/// [_i39.CreateOfflineGamePage]
class CreateOfflineGamePageRoute extends _i63.PageRouteInfo<void> {
  const CreateOfflineGamePageRoute()
      : super(CreateOfflineGamePageRoute.name, path: '');

  static const String name = 'CreateOfflineGamePageRoute';
}

/// generated route for
/// [_i40.CreateGameAdvancedSettingsModal]
class CreateGameAdvancedSettingsModalRoute
    extends _i63.PageRouteInfo<CreateGameAdvancedSettingsModalRouteArgs> {
  CreateGameAdvancedSettingsModalRoute({_i66.Key? key, required int index})
      : super(CreateGameAdvancedSettingsModalRoute.name,
            path: 'create-game-advanced-settings-modal',
            args: CreateGameAdvancedSettingsModalRouteArgs(
                key: key, index: index));

  static const String name = 'CreateGameAdvancedSettingsModalRoute';
}

class CreateGameAdvancedSettingsModalRouteArgs {
  const CreateGameAdvancedSettingsModalRouteArgs(
      {this.key, required this.index});

  final _i66.Key? key;

  final int index;

  @override
  String toString() {
    return 'CreateGameAdvancedSettingsModalRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i41.YouReallyWantToCancelGameDialog]
class YouReallyWantToCancelGameDialogRoute
    extends _i63.PageRouteInfo<YouReallyWantToCancelGameDialogRouteArgs> {
  YouReallyWantToCancelGameDialogRoute(
      {_i66.Key? key, required void Function() onYesPressed})
      : super(YouReallyWantToCancelGameDialogRoute.name,
            path: 'you-really-want-to-cancel-game-dialog',
            args: YouReallyWantToCancelGameDialogRouteArgs(
                key: key, onYesPressed: onYesPressed));

  static const String name = 'YouReallyWantToCancelGameDialogRoute';
}

class YouReallyWantToCancelGameDialogRouteArgs {
  const YouReallyWantToCancelGameDialogRouteArgs(
      {this.key, required this.onYesPressed});

  final _i66.Key? key;

  final void Function() onYesPressed;

  @override
  String toString() {
    return 'YouReallyWantToCancelGameDialogRouteArgs{key: $key, onYesPressed: $onYesPressed}';
  }
}

/// generated route for
/// [_i42.InOfflineGamePage]
class InOfflineGamePageRoute extends _i63.PageRouteInfo<void> {
  const InOfflineGamePageRoute() : super(InOfflineGamePageRoute.name, path: '');

  static const String name = 'InOfflineGamePageRoute';
}

/// generated route for
/// [_i43.CheckoutDetailsModal]
class CheckoutDetailsModalRoute
    extends _i63.PageRouteInfo<CheckoutDetailsModalRouteArgs> {
  CheckoutDetailsModalRoute(
      {_i66.Key? key,
      required _i66.Bloc<_i68.CheckoutDetailsEvent, _i69.CheckoutDetailsState>
          bloc})
      : super(CheckoutDetailsModalRoute.name,
            path: 'checkout-details-modal',
            args: CheckoutDetailsModalRouteArgs(key: key, bloc: bloc));

  static const String name = 'CheckoutDetailsModalRoute';
}

class CheckoutDetailsModalRouteArgs {
  const CheckoutDetailsModalRouteArgs({this.key, required this.bloc});

  final _i66.Key? key;

  final _i66.Bloc<_i68.CheckoutDetailsEvent, _i69.CheckoutDetailsState> bloc;

  @override
  String toString() {
    return 'CheckoutDetailsModalRouteArgs{key: $key, bloc: $bloc}';
  }
}

/// generated route for
/// [_i44.OfflineStatsModal]
class OfflineStatsModalRoute extends _i63.PageRouteInfo<void> {
  const OfflineStatsModalRoute()
      : super(OfflineStatsModalRoute.name, path: 'offline-stats-modal');

  static const String name = 'OfflineStatsModalRoute';
}

/// generated route for
/// [_i45.AdvancedSettingsModal]
class AdvancedSettingsModalRoute
    extends _i63.PageRouteInfo<AdvancedSettingsModalRouteArgs> {
  AdvancedSettingsModalRoute(
      {_i66.Key? key,
      required _i66.KtList<_i70.AbstractPlayerSnapshot> players})
      : super(AdvancedSettingsModalRoute.name,
            path: 'advanced-settings-modal',
            args: AdvancedSettingsModalRouteArgs(key: key, players: players));

  static const String name = 'AdvancedSettingsModalRoute';
}

class AdvancedSettingsModalRouteArgs {
  const AdvancedSettingsModalRouteArgs({this.key, required this.players});

  final _i66.Key? key;

  final _i66.KtList<_i70.AbstractPlayerSnapshot> players;

  @override
  String toString() {
    return 'AdvancedSettingsModalRouteArgs{key: $key, players: $players}';
  }
}

/// generated route for
/// [_i46.CreateOnlineGameFlow]
class CreateOnlineGameFlowRoute extends _i63.PageRouteInfo<void> {
  const CreateOnlineGameFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(CreateOnlineGameFlowRoute.name,
            path: '', initialChildren: children);

  static const String name = 'CreateOnlineGameFlowRoute';
}

/// generated route for
/// [_i47.InOnlineGameFlow]
class InOnlineGameFlowRoute extends _i63.PageRouteInfo<void> {
  const InOnlineGameFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(InOnlineGameFlowRoute.name,
            path: 'in-online-game-flow', initialChildren: children);

  static const String name = 'InOnlineGameFlowRoute';
}

/// generated route for
/// [_i48.PostOnlineGamePage]
class PostOnlineGamePageRoute extends _i63.PageRouteInfo<void> {
  const PostOnlineGamePageRoute()
      : super(PostOnlineGamePageRoute.name, path: 'post-online-game-page');

  static const String name = 'PostOnlineGamePageRoute';
}

/// generated route for
/// [_i49.CreateOnlineGamePage]
class CreateOnlineGamePageRoute extends _i63.PageRouteInfo<void> {
  const CreateOnlineGamePageRoute()
      : super(CreateOnlineGamePageRoute.name, path: '');

  static const String name = 'CreateOnlineGamePageRoute';
}

/// generated route for
/// [_i50.InOnlineGamePage]
class InOnlineGamePageRoute extends _i63.PageRouteInfo<void> {
  const InOnlineGamePageRoute() : super(InOnlineGamePageRoute.name, path: '');

  static const String name = 'InOnlineGamePageRoute';
}

/// generated route for
/// [_i51.OnlineStatsModal]
class OnlineStatsModalRoute extends _i63.PageRouteInfo<void> {
  const OnlineStatsModalRoute()
      : super(OnlineStatsModalRoute.name, path: 'online-stats-modal');

  static const String name = 'OnlineStatsModalRoute';
}

/// generated route for
/// [_i52.CreateTrainingFlow]
class CreateTrainingFlowRoute extends _i63.PageRouteInfo<void> {
  const CreateTrainingFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(CreateTrainingFlowRoute.name,
            path: '', initialChildren: children);

  static const String name = 'CreateTrainingFlowRoute';
}

/// generated route for
/// [_i53.InBobsTwentySevenTrainingFlow]
class InBobsTwentySevenTrainingFlowRoute extends _i63.PageRouteInfo<void> {
  const InBobsTwentySevenTrainingFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(InBobsTwentySevenTrainingFlowRoute.name,
            path: 'in-bobs-twenty-seven-training-flow',
            initialChildren: children);

  static const String name = 'InBobsTwentySevenTrainingFlowRoute';
}

/// generated route for
/// [_i54.InScoreTrainingFlow]
class InScoreTrainingFlowRoute extends _i63.PageRouteInfo<void> {
  const InScoreTrainingFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(InScoreTrainingFlowRoute.name,
            path: 'in-score-training-flow', initialChildren: children);

  static const String name = 'InScoreTrainingFlowRoute';
}

/// generated route for
/// [_i55.InSingleTrainingFlow]
class InSingleTrainingFlowRoute extends _i63.PageRouteInfo<void> {
  const InSingleTrainingFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(InSingleTrainingFlowRoute.name,
            path: 'in-single-training-flow', initialChildren: children);

  static const String name = 'InSingleTrainingFlowRoute';
}

/// generated route for
/// [_i56.InDoubleTrainingFlow]
class InDoubleTrainingFlowRoute extends _i63.PageRouteInfo<void> {
  const InDoubleTrainingFlowRoute({List<_i63.PageRouteInfo>? children})
      : super(InDoubleTrainingFlowRoute.name,
            path: 'in-double-training-flow', initialChildren: children);

  static const String name = 'InDoubleTrainingFlowRoute';
}

/// generated route for
/// [_i57.PostTrainingPage]
class PostTrainingPageRoute extends _i63.PageRouteInfo<void> {
  const PostTrainingPageRoute()
      : super(PostTrainingPageRoute.name, path: 'post-training-page');

  static const String name = 'PostTrainingPageRoute';
}

/// generated route for
/// [_i58.CreateTrainingPage]
class CreateTrainingPageRoute extends _i63.PageRouteInfo<void> {
  const CreateTrainingPageRoute()
      : super(CreateTrainingPageRoute.name, path: '');

  static const String name = 'CreateTrainingPageRoute';
}

/// generated route for
/// [_i59.InBobsTwentySeventTrainingPage]
class InBobsTwentySeventTrainingPageRoute extends _i63.PageRouteInfo<void> {
  const InBobsTwentySeventTrainingPageRoute()
      : super(InBobsTwentySeventTrainingPageRoute.name, path: '');

  static const String name = 'InBobsTwentySeventTrainingPageRoute';
}

/// generated route for
/// [_i60.InScoreTrainingPage]
class InScoreTrainingPageRoute extends _i63.PageRouteInfo<void> {
  const InScoreTrainingPageRoute()
      : super(InScoreTrainingPageRoute.name, path: '');

  static const String name = 'InScoreTrainingPageRoute';
}

/// generated route for
/// [_i61.InSingleTrainingPage]
class InSingleTrainingPageRoute extends _i63.PageRouteInfo<void> {
  const InSingleTrainingPageRoute()
      : super(InSingleTrainingPageRoute.name, path: '');

  static const String name = 'InSingleTrainingPageRoute';
}

/// generated route for
/// [_i62.InDoubleTrainingPage]
class InDoubleTrainingPageRoute extends _i63.PageRouteInfo<void> {
  const InDoubleTrainingPageRoute()
      : super(InDoubleTrainingPageRoute.name, path: '');

  static const String name = 'InDoubleTrainingPageRoute';
}

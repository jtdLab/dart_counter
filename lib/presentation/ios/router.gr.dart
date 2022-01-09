// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i57;
import 'package:flutter/material.dart' as _i58;

import '../../application/main/game_history/game_history_bloc.dart' as _i61;
import '../../application/main/play/shared/in_game/checkout_details/points/checkout_details_points_bloc.dart'
    as _i62;
import '../../domain/play/abstract_player_snapshot.dart' as _i63;
import 'auth/auth_flow.dart' as _i1;
import 'auth/modals/forgot_password/forgot_password_modal.dart' as _i4;
import 'auth/modals/forgot_password/initial/initial_page.dart' as _i5;
import 'auth/modals/forgot_password/success/success_page.dart' as _i6;
import 'auth/page/auth_page.dart' as _i3;
import 'core/core.dart' as _i60;
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
    as _i43;
import 'main/play/offline/in_game/page/in_offline_game_page.dart' as _i41;
import 'main/play/offline/play_offline_flow.dart' as _i15;
import 'main/play/offline/post_game/post_offline_game_page.dart' as _i38;
import 'main/play/online/create_game/create_online_game_flow.dart' as _i45;
import 'main/play/online/create_game/page/create_online_game_page.dart' as _i48;
import 'main/play/online/in_game/in_online_game_flow.dart' as _i46;
import 'main/play/online/in_game/modals/stats/online_stats_modal.dart' as _i50;
import 'main/play/online/in_game/page/in_online_game_page.dart' as _i49;
import 'main/play/online/play_online_flow.dart' as _i16;
import 'main/play/online/post_game/post_online_game_page.dart' as _i47;
import 'main/play/shared/create_game/modals/advanced_settings/advanced_settings_modal.dart'
    as _i40;
import 'main/play/shared/in_game/modals/advanced_settings/advanced_settings_modal.dart'
    as _i44;
import 'main/play/shared/in_game/modals/checkout_details/checkout_details_modal.dart'
    as _i42;
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
import 'main/training/create_training/create_training_page.dart' as _i51;
import 'main/training/in_training/bobs_twenty_seven/in_bobs_twenty_seven_training_page.dart'
    as _i52;
import 'main/training/in_training/double/in_double_training_page.dart' as _i53;
import 'main/training/in_training/score/in_score_training_page.dart' as _i54;
import 'main/training/in_training/single/in_single_training_page.dart' as _i55;
import 'main/training/post_training/post_training_page.dart' as _i56;
import 'main/training/training_flow.dart' as _i17;
import 'router.dart' as _i59;

class Router extends _i57.RootStackRouter {
  Router([_i58.GlobalKey<_i58.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i57.PageFactory> pagesMap = {
    AuthFlowRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.AuthFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    MainFlowRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.MainFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    AuthPageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.AuthPage(),
          customRouteBuilder: _i59.modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ForgotPasswordModalRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.ForgotPasswordModal(),
          customRouteBuilder: _i59.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ForgotPasswordInitialPageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.ForgotPasswordInitialPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ForgotPasswordSuccessPageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.ForgotPasswordSuccessPage(),
          opaque: true,
          barrierDismissible: false);
    },
    HomePageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: _i7.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    SettingsFlowRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i8.SettingsFlow());
    },
    PrivacyPolicyPageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.PrivacyPolicyPage());
    },
    ContactPageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i10.ContactPage());
    },
    GameInvitationsPageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i11.GameInvitationsPage());
    },
    FriendsFlowRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i12.FriendsFlow());
    },
    ProfilePageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i13.ProfilePage());
    },
    GameHistoryFlowRoute.name: (routeData) {
      final args = routeData.argsAs<GameHistoryFlowRouteArgs>();
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i14.GameHistoryFlow(
              key: args.key, gameHistoryBloc: args.gameHistoryBloc));
    },
    PlayOfflineFlowRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i15.PlayOfflineFlow());
    },
    PlayOnlineFlowRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i16.PlayOnlineFlow());
    },
    TrainingFlowRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i17.TrainingFlow());
    },
    SettingsPageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i18.SettingsPage(),
          customRouteBuilder: _i59.modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ChangeEmailModalRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i19.ChangeEmailModal(),
          customRouteBuilder: _i59.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ChangePasswordModalRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i20.ChangePasswordModal(),
          customRouteBuilder: _i59.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ChangeUsernameModalRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i21.ChangeUsernameModal(),
          customRouteBuilder: _i59.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    EditProfileImageModalRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: _i22.EditProfileImageModal(),
          customRouteBuilder: _i59.notExpandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ChangeEmailInitialPageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i23.ChangeEmailInitialPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangeEmailSuccessPageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i24.ChangeEmailSuccessPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangePasswordInitialPageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i25.ChangePasswordInitialPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangePasswordSuccessPageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i26.ChangePasswordSuccessPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangeUsernameInitialPageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i27.ChangeUsernameInitialPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangeUsernameSuccessPageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i28.ChangeUsernameSuccessPage(),
          opaque: true,
          barrierDismissible: false);
    },
    FriendsOverviewFlowRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i29.FriendsOverviewFlow());
    },
    FriendsProfilePageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i30.FriendsProfilePage());
    },
    FriendsOverviewPageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i31.FriendsOverviewPage(),
          customRouteBuilder: _i59.modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    MoreModalRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: _i32.MoreModal(),
          customRouteBuilder: _i59.notExpandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    SearchUserModalRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i33.SearchUserModal(),
          customRouteBuilder: _i59.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    GameHistoryOverviewPageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i34.GameHistoryOverviewPage());
    },
    GameHistoryDetailsPageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i35.GameHistoryDetailsPage());
    },
    CreateOfflineGameFlowRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i36.CreateOfflineGameFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    InOfflineGameFlowRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i37.InOfflineGameFlow());
    },
    PostOfflineGamePageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i38.PostOfflineGamePage());
    },
    CreateOfflineGamePageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i39.CreateOfflineGamePage(),
          customRouteBuilder: _i59.modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CreateGameAdvancedSettingsModalRoute.name: (routeData) {
      final args = routeData.argsAs<CreateGameAdvancedSettingsModalRouteArgs>();
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: _i40.CreateGameAdvancedSettingsModal(
              key: args.key, index: args.index),
          customRouteBuilder: _i59.notExpandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    InOfflineGamePageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i41.InOfflineGamePage(),
          customRouteBuilder: _i59.modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CheckoutDetailsModalRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutDetailsModalRouteArgs>();
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: _i42.CheckoutDetailsModal(key: args.key, bloc: args.bloc),
          customRouteBuilder: _i59.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    OfflineStatsModalRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i43.OfflineStatsModal(),
          customRouteBuilder: _i59.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    AdvancedSettingsModalRoute.name: (routeData) {
      final args = routeData.argsAs<AdvancedSettingsModalRouteArgs>();
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child:
              _i44.AdvancedSettingsModal(key: args.key, players: args.players),
          customRouteBuilder: _i59.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CreateOnlineGameFlowRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i45.CreateOnlineGameFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    InOnlineGameFlowRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i46.InOnlineGameFlow());
    },
    PostOnlineGamePageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i47.PostOnlineGamePage());
    },
    CreateOnlineGamePageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i48.CreateOnlineGamePage(),
          customRouteBuilder: _i59.modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    InOnlineGamePageRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i49.InOnlineGamePage(),
          customRouteBuilder: _i59.modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    OnlineStatsModalRoute.name: (routeData) {
      return _i57.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i50.OnlineStatsModal(),
          customRouteBuilder: _i59.expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CreateTrainingPageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i51.CreateTrainingPage());
    },
    InBobyTwentySeventTrainingPageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: const _i52.InBobyTwentySeventTrainingPage());
    },
    InDoubleTrainingPageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i53.InDoubleTrainingPage());
    },
    InScoreTrainingPageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i54.InScoreTrainingPage());
    },
    InSingleTrainingPageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i55.InSingleTrainingPage());
    },
    PostTrainingPageRoute.name: (routeData) {
      return _i57.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i56.PostTrainingPage());
    }
  };

  @override
  List<_i57.RouteConfig> get routes => [
        _i57.RouteConfig(AuthFlowRoute.name, path: '/auth-flow', children: [
          _i57.RouteConfig(AuthPageRoute.name,
              path: '', parent: AuthFlowRoute.name),
          _i57.RouteConfig(ForgotPasswordModalRoute.name,
              path: 'forgot-password-modal',
              parent: AuthFlowRoute.name,
              children: [
                _i57.RouteConfig(ForgotPasswordInitialPageRoute.name,
                    path: '', parent: ForgotPasswordModalRoute.name),
                _i57.RouteConfig(ForgotPasswordSuccessPageRoute.name,
                    path: 'forgot-password-success-page',
                    parent: ForgotPasswordModalRoute.name)
              ])
        ]),
        _i57.RouteConfig(MainFlowRoute.name, path: '/main-flow', children: [
          _i57.RouteConfig(HomePageRoute.name,
              path: '', parent: MainFlowRoute.name),
          _i57.RouteConfig(SettingsFlowRoute.name,
              path: 'settings-flow',
              parent: MainFlowRoute.name,
              children: [
                _i57.RouteConfig(SettingsPageRoute.name,
                    path: '', parent: SettingsFlowRoute.name),
                _i57.RouteConfig(ChangeEmailModalRoute.name,
                    path: 'change-email-modal',
                    parent: SettingsFlowRoute.name,
                    children: [
                      _i57.RouteConfig(ChangeEmailInitialPageRoute.name,
                          path: '', parent: ChangeEmailModalRoute.name),
                      _i57.RouteConfig(ChangeEmailSuccessPageRoute.name,
                          path: 'change-email-success-page',
                          parent: ChangeEmailModalRoute.name)
                    ]),
                _i57.RouteConfig(ChangePasswordModalRoute.name,
                    path: 'change-password-modal',
                    parent: SettingsFlowRoute.name,
                    children: [
                      _i57.RouteConfig(ChangePasswordInitialPageRoute.name,
                          path: '', parent: ChangePasswordModalRoute.name),
                      _i57.RouteConfig(ChangePasswordSuccessPageRoute.name,
                          path: 'change-password-success-page',
                          parent: ChangePasswordModalRoute.name)
                    ]),
                _i57.RouteConfig(ChangeUsernameModalRoute.name,
                    path: 'change-username-modal',
                    parent: SettingsFlowRoute.name,
                    children: [
                      _i57.RouteConfig(ChangeUsernameInitialPageRoute.name,
                          path: '', parent: ChangeUsernameModalRoute.name),
                      _i57.RouteConfig(ChangeUsernameSuccessPageRoute.name,
                          path: 'change-username-success-page',
                          parent: ChangeUsernameModalRoute.name)
                    ]),
                _i57.RouteConfig(EditProfileImageModalRoute.name,
                    path: 'edit-profile-image-modal',
                    parent: SettingsFlowRoute.name)
              ]),
          _i57.RouteConfig(PrivacyPolicyPageRoute.name,
              path: 'privacy-policy-page', parent: MainFlowRoute.name),
          _i57.RouteConfig(ContactPageRoute.name,
              path: 'contact-page', parent: MainFlowRoute.name),
          _i57.RouteConfig(GameInvitationsPageRoute.name,
              path: 'game-invitations-page', parent: MainFlowRoute.name),
          _i57.RouteConfig(FriendsFlowRoute.name,
              path: 'friends-flow',
              parent: MainFlowRoute.name,
              children: [
                _i57.RouteConfig(FriendsOverviewFlowRoute.name,
                    path: '',
                    parent: FriendsFlowRoute.name,
                    children: [
                      _i57.RouteConfig(FriendsOverviewPageRoute.name,
                          path: '', parent: FriendsOverviewFlowRoute.name),
                      _i57.RouteConfig(MoreModalRoute.name,
                          path: 'more-modal',
                          parent: FriendsOverviewFlowRoute.name),
                      _i57.RouteConfig(SearchUserModalRoute.name,
                          path: 'search-user-modal',
                          parent: FriendsOverviewFlowRoute.name)
                    ]),
                _i57.RouteConfig(FriendsProfilePageRoute.name,
                    path: 'friends-profile-page', parent: FriendsFlowRoute.name)
              ]),
          _i57.RouteConfig(ProfilePageRoute.name,
              path: 'profile-page', parent: MainFlowRoute.name),
          _i57.RouteConfig(GameHistoryFlowRoute.name,
              path: 'game-history-flow',
              parent: MainFlowRoute.name,
              children: [
                _i57.RouteConfig(GameHistoryOverviewPageRoute.name,
                    path: '', parent: GameHistoryFlowRoute.name),
                _i57.RouteConfig(GameHistoryDetailsPageRoute.name,
                    path: 'game-history-details-page',
                    parent: GameHistoryFlowRoute.name)
              ]),
          _i57.RouteConfig(PlayOfflineFlowRoute.name,
              path: 'play-offline-flow',
              parent: MainFlowRoute.name,
              children: [
                _i57.RouteConfig(CreateOfflineGameFlowRoute.name,
                    path: '',
                    parent: PlayOfflineFlowRoute.name,
                    children: [
                      _i57.RouteConfig(CreateOfflineGamePageRoute.name,
                          path: '', parent: CreateOfflineGameFlowRoute.name),
                      _i57.RouteConfig(
                          CreateGameAdvancedSettingsModalRoute.name,
                          path: 'create-game-advanced-settings-modal',
                          parent: CreateOfflineGameFlowRoute.name)
                    ]),
                _i57.RouteConfig(InOfflineGameFlowRoute.name,
                    path: 'in-offline-game-flow',
                    parent: PlayOfflineFlowRoute.name,
                    children: [
                      _i57.RouteConfig(InOfflineGamePageRoute.name,
                          path: '', parent: InOfflineGameFlowRoute.name),
                      _i57.RouteConfig(CheckoutDetailsModalRoute.name,
                          path: 'checkout-details-modal',
                          parent: InOfflineGameFlowRoute.name),
                      _i57.RouteConfig(OfflineStatsModalRoute.name,
                          path: 'offline-stats-modal',
                          parent: InOfflineGameFlowRoute.name),
                      _i57.RouteConfig(AdvancedSettingsModalRoute.name,
                          path: 'advanced-settings-modal',
                          parent: InOfflineGameFlowRoute.name)
                    ]),
                _i57.RouteConfig(PostOfflineGamePageRoute.name,
                    path: 'post-offline-game-page',
                    parent: PlayOfflineFlowRoute.name)
              ]),
          _i57.RouteConfig(PlayOnlineFlowRoute.name,
              path: 'play-online-flow',
              parent: MainFlowRoute.name,
              children: [
                _i57.RouteConfig(CreateOnlineGameFlowRoute.name,
                    path: '',
                    parent: PlayOnlineFlowRoute.name,
                    children: [
                      _i57.RouteConfig(CreateOnlineGamePageRoute.name,
                          path: '', parent: CreateOnlineGameFlowRoute.name),
                      _i57.RouteConfig(
                          CreateGameAdvancedSettingsModalRoute.name,
                          path: 'create-game-advanced-settings-modal',
                          parent: CreateOnlineGameFlowRoute.name)
                    ]),
                _i57.RouteConfig(InOnlineGameFlowRoute.name,
                    path: 'in-online-game-flow',
                    parent: PlayOnlineFlowRoute.name,
                    children: [
                      _i57.RouteConfig(InOnlineGamePageRoute.name,
                          path: '', parent: InOnlineGameFlowRoute.name),
                      _i57.RouteConfig(CheckoutDetailsModalRoute.name,
                          path: 'checkout-details-modal',
                          parent: InOnlineGameFlowRoute.name),
                      _i57.RouteConfig(OnlineStatsModalRoute.name,
                          path: 'online-stats-modal',
                          parent: InOnlineGameFlowRoute.name),
                      _i57.RouteConfig(AdvancedSettingsModalRoute.name,
                          path: 'advanced-settings-modal',
                          parent: InOnlineGameFlowRoute.name)
                    ]),
                _i57.RouteConfig(PostOnlineGamePageRoute.name,
                    path: 'post-online-game-page',
                    parent: PlayOnlineFlowRoute.name)
              ]),
          _i57.RouteConfig(TrainingFlowRoute.name,
              path: 'training-flow',
              parent: MainFlowRoute.name,
              children: [
                _i57.RouteConfig(CreateTrainingPageRoute.name,
                    path: '', parent: TrainingFlowRoute.name),
                _i57.RouteConfig(InBobyTwentySeventTrainingPageRoute.name,
                    path: 'in-boby-twenty-sevent-training-page',
                    parent: TrainingFlowRoute.name),
                _i57.RouteConfig(InDoubleTrainingPageRoute.name,
                    path: 'in-double-training-page',
                    parent: TrainingFlowRoute.name),
                _i57.RouteConfig(InScoreTrainingPageRoute.name,
                    path: 'in-score-training-page',
                    parent: TrainingFlowRoute.name),
                _i57.RouteConfig(InSingleTrainingPageRoute.name,
                    path: 'in-single-training-page',
                    parent: TrainingFlowRoute.name),
                _i57.RouteConfig(PostTrainingPageRoute.name,
                    path: 'post-training-page', parent: TrainingFlowRoute.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.AuthFlow]
class AuthFlowRoute extends _i57.PageRouteInfo<void> {
  const AuthFlowRoute({List<_i57.PageRouteInfo>? children})
      : super(AuthFlowRoute.name,
            path: '/auth-flow', initialChildren: children);

  static const String name = 'AuthFlowRoute';
}

/// generated route for
/// [_i2.MainFlow]
class MainFlowRoute extends _i57.PageRouteInfo<void> {
  const MainFlowRoute({List<_i57.PageRouteInfo>? children})
      : super(MainFlowRoute.name,
            path: '/main-flow', initialChildren: children);

  static const String name = 'MainFlowRoute';
}

/// generated route for
/// [_i3.AuthPage]
class AuthPageRoute extends _i57.PageRouteInfo<void> {
  const AuthPageRoute() : super(AuthPageRoute.name, path: '');

  static const String name = 'AuthPageRoute';
}

/// generated route for
/// [_i4.ForgotPasswordModal]
class ForgotPasswordModalRoute extends _i57.PageRouteInfo<void> {
  const ForgotPasswordModalRoute({List<_i57.PageRouteInfo>? children})
      : super(ForgotPasswordModalRoute.name,
            path: 'forgot-password-modal', initialChildren: children);

  static const String name = 'ForgotPasswordModalRoute';
}

/// generated route for
/// [_i5.ForgotPasswordInitialPage]
class ForgotPasswordInitialPageRoute extends _i57.PageRouteInfo<void> {
  const ForgotPasswordInitialPageRoute()
      : super(ForgotPasswordInitialPageRoute.name, path: '');

  static const String name = 'ForgotPasswordInitialPageRoute';
}

/// generated route for
/// [_i6.ForgotPasswordSuccessPage]
class ForgotPasswordSuccessPageRoute extends _i57.PageRouteInfo<void> {
  const ForgotPasswordSuccessPageRoute()
      : super(ForgotPasswordSuccessPageRoute.name,
            path: 'forgot-password-success-page');

  static const String name = 'ForgotPasswordSuccessPageRoute';
}

/// generated route for
/// [_i7.HomePage]
class HomePageRoute extends _i57.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i8.SettingsFlow]
class SettingsFlowRoute extends _i57.PageRouteInfo<void> {
  const SettingsFlowRoute({List<_i57.PageRouteInfo>? children})
      : super(SettingsFlowRoute.name,
            path: 'settings-flow', initialChildren: children);

  static const String name = 'SettingsFlowRoute';
}

/// generated route for
/// [_i9.PrivacyPolicyPage]
class PrivacyPolicyPageRoute extends _i57.PageRouteInfo<void> {
  const PrivacyPolicyPageRoute()
      : super(PrivacyPolicyPageRoute.name, path: 'privacy-policy-page');

  static const String name = 'PrivacyPolicyPageRoute';
}

/// generated route for
/// [_i10.ContactPage]
class ContactPageRoute extends _i57.PageRouteInfo<void> {
  const ContactPageRoute() : super(ContactPageRoute.name, path: 'contact-page');

  static const String name = 'ContactPageRoute';
}

/// generated route for
/// [_i11.GameInvitationsPage]
class GameInvitationsPageRoute extends _i57.PageRouteInfo<void> {
  const GameInvitationsPageRoute()
      : super(GameInvitationsPageRoute.name, path: 'game-invitations-page');

  static const String name = 'GameInvitationsPageRoute';
}

/// generated route for
/// [_i12.FriendsFlow]
class FriendsFlowRoute extends _i57.PageRouteInfo<void> {
  const FriendsFlowRoute({List<_i57.PageRouteInfo>? children})
      : super(FriendsFlowRoute.name,
            path: 'friends-flow', initialChildren: children);

  static const String name = 'FriendsFlowRoute';
}

/// generated route for
/// [_i13.ProfilePage]
class ProfilePageRoute extends _i57.PageRouteInfo<void> {
  const ProfilePageRoute() : super(ProfilePageRoute.name, path: 'profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i14.GameHistoryFlow]
class GameHistoryFlowRoute
    extends _i57.PageRouteInfo<GameHistoryFlowRouteArgs> {
  GameHistoryFlowRoute(
      {_i60.Key? key,
      required _i61.GameHistoryBloc gameHistoryBloc,
      List<_i57.PageRouteInfo>? children})
      : super(GameHistoryFlowRoute.name,
            path: 'game-history-flow',
            args: GameHistoryFlowRouteArgs(
                key: key, gameHistoryBloc: gameHistoryBloc),
            initialChildren: children);

  static const String name = 'GameHistoryFlowRoute';
}

class GameHistoryFlowRouteArgs {
  const GameHistoryFlowRouteArgs({this.key, required this.gameHistoryBloc});

  final _i60.Key? key;

  final _i61.GameHistoryBloc gameHistoryBloc;

  @override
  String toString() {
    return 'GameHistoryFlowRouteArgs{key: $key, gameHistoryBloc: $gameHistoryBloc}';
  }
}

/// generated route for
/// [_i15.PlayOfflineFlow]
class PlayOfflineFlowRoute extends _i57.PageRouteInfo<void> {
  const PlayOfflineFlowRoute({List<_i57.PageRouteInfo>? children})
      : super(PlayOfflineFlowRoute.name,
            path: 'play-offline-flow', initialChildren: children);

  static const String name = 'PlayOfflineFlowRoute';
}

/// generated route for
/// [_i16.PlayOnlineFlow]
class PlayOnlineFlowRoute extends _i57.PageRouteInfo<void> {
  const PlayOnlineFlowRoute({List<_i57.PageRouteInfo>? children})
      : super(PlayOnlineFlowRoute.name,
            path: 'play-online-flow', initialChildren: children);

  static const String name = 'PlayOnlineFlowRoute';
}

/// generated route for
/// [_i17.TrainingFlow]
class TrainingFlowRoute extends _i57.PageRouteInfo<void> {
  const TrainingFlowRoute({List<_i57.PageRouteInfo>? children})
      : super(TrainingFlowRoute.name,
            path: 'training-flow', initialChildren: children);

  static const String name = 'TrainingFlowRoute';
}

/// generated route for
/// [_i18.SettingsPage]
class SettingsPageRoute extends _i57.PageRouteInfo<void> {
  const SettingsPageRoute() : super(SettingsPageRoute.name, path: '');

  static const String name = 'SettingsPageRoute';
}

/// generated route for
/// [_i19.ChangeEmailModal]
class ChangeEmailModalRoute extends _i57.PageRouteInfo<void> {
  const ChangeEmailModalRoute({List<_i57.PageRouteInfo>? children})
      : super(ChangeEmailModalRoute.name,
            path: 'change-email-modal', initialChildren: children);

  static const String name = 'ChangeEmailModalRoute';
}

/// generated route for
/// [_i20.ChangePasswordModal]
class ChangePasswordModalRoute extends _i57.PageRouteInfo<void> {
  const ChangePasswordModalRoute({List<_i57.PageRouteInfo>? children})
      : super(ChangePasswordModalRoute.name,
            path: 'change-password-modal', initialChildren: children);

  static const String name = 'ChangePasswordModalRoute';
}

/// generated route for
/// [_i21.ChangeUsernameModal]
class ChangeUsernameModalRoute extends _i57.PageRouteInfo<void> {
  const ChangeUsernameModalRoute({List<_i57.PageRouteInfo>? children})
      : super(ChangeUsernameModalRoute.name,
            path: 'change-username-modal', initialChildren: children);

  static const String name = 'ChangeUsernameModalRoute';
}

/// generated route for
/// [_i22.EditProfileImageModal]
class EditProfileImageModalRoute extends _i57.PageRouteInfo<void> {
  const EditProfileImageModalRoute()
      : super(EditProfileImageModalRoute.name,
            path: 'edit-profile-image-modal');

  static const String name = 'EditProfileImageModalRoute';
}

/// generated route for
/// [_i23.ChangeEmailInitialPage]
class ChangeEmailInitialPageRoute extends _i57.PageRouteInfo<void> {
  const ChangeEmailInitialPageRoute()
      : super(ChangeEmailInitialPageRoute.name, path: '');

  static const String name = 'ChangeEmailInitialPageRoute';
}

/// generated route for
/// [_i24.ChangeEmailSuccessPage]
class ChangeEmailSuccessPageRoute extends _i57.PageRouteInfo<void> {
  const ChangeEmailSuccessPageRoute()
      : super(ChangeEmailSuccessPageRoute.name,
            path: 'change-email-success-page');

  static const String name = 'ChangeEmailSuccessPageRoute';
}

/// generated route for
/// [_i25.ChangePasswordInitialPage]
class ChangePasswordInitialPageRoute extends _i57.PageRouteInfo<void> {
  const ChangePasswordInitialPageRoute()
      : super(ChangePasswordInitialPageRoute.name, path: '');

  static const String name = 'ChangePasswordInitialPageRoute';
}

/// generated route for
/// [_i26.ChangePasswordSuccessPage]
class ChangePasswordSuccessPageRoute extends _i57.PageRouteInfo<void> {
  const ChangePasswordSuccessPageRoute()
      : super(ChangePasswordSuccessPageRoute.name,
            path: 'change-password-success-page');

  static const String name = 'ChangePasswordSuccessPageRoute';
}

/// generated route for
/// [_i27.ChangeUsernameInitialPage]
class ChangeUsernameInitialPageRoute extends _i57.PageRouteInfo<void> {
  const ChangeUsernameInitialPageRoute()
      : super(ChangeUsernameInitialPageRoute.name, path: '');

  static const String name = 'ChangeUsernameInitialPageRoute';
}

/// generated route for
/// [_i28.ChangeUsernameSuccessPage]
class ChangeUsernameSuccessPageRoute extends _i57.PageRouteInfo<void> {
  const ChangeUsernameSuccessPageRoute()
      : super(ChangeUsernameSuccessPageRoute.name,
            path: 'change-username-success-page');

  static const String name = 'ChangeUsernameSuccessPageRoute';
}

/// generated route for
/// [_i29.FriendsOverviewFlow]
class FriendsOverviewFlowRoute extends _i57.PageRouteInfo<void> {
  const FriendsOverviewFlowRoute({List<_i57.PageRouteInfo>? children})
      : super(FriendsOverviewFlowRoute.name,
            path: '', initialChildren: children);

  static const String name = 'FriendsOverviewFlowRoute';
}

/// generated route for
/// [_i30.FriendsProfilePage]
class FriendsProfilePageRoute extends _i57.PageRouteInfo<void> {
  const FriendsProfilePageRoute()
      : super(FriendsProfilePageRoute.name, path: 'friends-profile-page');

  static const String name = 'FriendsProfilePageRoute';
}

/// generated route for
/// [_i31.FriendsOverviewPage]
class FriendsOverviewPageRoute extends _i57.PageRouteInfo<void> {
  const FriendsOverviewPageRoute()
      : super(FriendsOverviewPageRoute.name, path: '');

  static const String name = 'FriendsOverviewPageRoute';
}

/// generated route for
/// [_i32.MoreModal]
class MoreModalRoute extends _i57.PageRouteInfo<void> {
  const MoreModalRoute() : super(MoreModalRoute.name, path: 'more-modal');

  static const String name = 'MoreModalRoute';
}

/// generated route for
/// [_i33.SearchUserModal]
class SearchUserModalRoute extends _i57.PageRouteInfo<void> {
  const SearchUserModalRoute()
      : super(SearchUserModalRoute.name, path: 'search-user-modal');

  static const String name = 'SearchUserModalRoute';
}

/// generated route for
/// [_i34.GameHistoryOverviewPage]
class GameHistoryOverviewPageRoute extends _i57.PageRouteInfo<void> {
  const GameHistoryOverviewPageRoute()
      : super(GameHistoryOverviewPageRoute.name, path: '');

  static const String name = 'GameHistoryOverviewPageRoute';
}

/// generated route for
/// [_i35.GameHistoryDetailsPage]
class GameHistoryDetailsPageRoute extends _i57.PageRouteInfo<void> {
  const GameHistoryDetailsPageRoute()
      : super(GameHistoryDetailsPageRoute.name,
            path: 'game-history-details-page');

  static const String name = 'GameHistoryDetailsPageRoute';
}

/// generated route for
/// [_i36.CreateOfflineGameFlow]
class CreateOfflineGameFlowRoute extends _i57.PageRouteInfo<void> {
  const CreateOfflineGameFlowRoute({List<_i57.PageRouteInfo>? children})
      : super(CreateOfflineGameFlowRoute.name,
            path: '', initialChildren: children);

  static const String name = 'CreateOfflineGameFlowRoute';
}

/// generated route for
/// [_i37.InOfflineGameFlow]
class InOfflineGameFlowRoute extends _i57.PageRouteInfo<void> {
  const InOfflineGameFlowRoute({List<_i57.PageRouteInfo>? children})
      : super(InOfflineGameFlowRoute.name,
            path: 'in-offline-game-flow', initialChildren: children);

  static const String name = 'InOfflineGameFlowRoute';
}

/// generated route for
/// [_i38.PostOfflineGamePage]
class PostOfflineGamePageRoute extends _i57.PageRouteInfo<void> {
  const PostOfflineGamePageRoute()
      : super(PostOfflineGamePageRoute.name, path: 'post-offline-game-page');

  static const String name = 'PostOfflineGamePageRoute';
}

/// generated route for
/// [_i39.CreateOfflineGamePage]
class CreateOfflineGamePageRoute extends _i57.PageRouteInfo<void> {
  const CreateOfflineGamePageRoute()
      : super(CreateOfflineGamePageRoute.name, path: '');

  static const String name = 'CreateOfflineGamePageRoute';
}

/// generated route for
/// [_i40.CreateGameAdvancedSettingsModal]
class CreateGameAdvancedSettingsModalRoute
    extends _i57.PageRouteInfo<CreateGameAdvancedSettingsModalRouteArgs> {
  CreateGameAdvancedSettingsModalRoute({_i60.Key? key, required int index})
      : super(CreateGameAdvancedSettingsModalRoute.name,
            path: 'create-game-advanced-settings-modal',
            args: CreateGameAdvancedSettingsModalRouteArgs(
                key: key, index: index));

  static const String name = 'CreateGameAdvancedSettingsModalRoute';
}

class CreateGameAdvancedSettingsModalRouteArgs {
  const CreateGameAdvancedSettingsModalRouteArgs(
      {this.key, required this.index});

  final _i60.Key? key;

  final int index;

  @override
  String toString() {
    return 'CreateGameAdvancedSettingsModalRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i41.InOfflineGamePage]
class InOfflineGamePageRoute extends _i57.PageRouteInfo<void> {
  const InOfflineGamePageRoute() : super(InOfflineGamePageRoute.name, path: '');

  static const String name = 'InOfflineGamePageRoute';
}

/// generated route for
/// [_i42.CheckoutDetailsModal]
class CheckoutDetailsModalRoute
    extends _i57.PageRouteInfo<CheckoutDetailsModalRouteArgs> {
  CheckoutDetailsModalRoute(
      {_i60.Key? key,
      required _i60.Bloc<_i62.CheckoutDetailsEvent, _i62.CheckoutDetailsState>
          bloc})
      : super(CheckoutDetailsModalRoute.name,
            path: 'checkout-details-modal',
            args: CheckoutDetailsModalRouteArgs(key: key, bloc: bloc));

  static const String name = 'CheckoutDetailsModalRoute';
}

class CheckoutDetailsModalRouteArgs {
  const CheckoutDetailsModalRouteArgs({this.key, required this.bloc});

  final _i60.Key? key;

  final _i60.Bloc<_i62.CheckoutDetailsEvent, _i62.CheckoutDetailsState> bloc;

  @override
  String toString() {
    return 'CheckoutDetailsModalRouteArgs{key: $key, bloc: $bloc}';
  }
}

/// generated route for
/// [_i43.OfflineStatsModal]
class OfflineStatsModalRoute extends _i57.PageRouteInfo<void> {
  const OfflineStatsModalRoute()
      : super(OfflineStatsModalRoute.name, path: 'offline-stats-modal');

  static const String name = 'OfflineStatsModalRoute';
}

/// generated route for
/// [_i44.AdvancedSettingsModal]
class AdvancedSettingsModalRoute
    extends _i57.PageRouteInfo<AdvancedSettingsModalRouteArgs> {
  AdvancedSettingsModalRoute(
      {_i60.Key? key,
      required _i60.KtList<_i63.AbstractPlayerSnapshot> players})
      : super(AdvancedSettingsModalRoute.name,
            path: 'advanced-settings-modal',
            args: AdvancedSettingsModalRouteArgs(key: key, players: players));

  static const String name = 'AdvancedSettingsModalRoute';
}

class AdvancedSettingsModalRouteArgs {
  const AdvancedSettingsModalRouteArgs({this.key, required this.players});

  final _i60.Key? key;

  final _i60.KtList<_i63.AbstractPlayerSnapshot> players;

  @override
  String toString() {
    return 'AdvancedSettingsModalRouteArgs{key: $key, players: $players}';
  }
}

/// generated route for
/// [_i45.CreateOnlineGameFlow]
class CreateOnlineGameFlowRoute extends _i57.PageRouteInfo<void> {
  const CreateOnlineGameFlowRoute({List<_i57.PageRouteInfo>? children})
      : super(CreateOnlineGameFlowRoute.name,
            path: '', initialChildren: children);

  static const String name = 'CreateOnlineGameFlowRoute';
}

/// generated route for
/// [_i46.InOnlineGameFlow]
class InOnlineGameFlowRoute extends _i57.PageRouteInfo<void> {
  const InOnlineGameFlowRoute({List<_i57.PageRouteInfo>? children})
      : super(InOnlineGameFlowRoute.name,
            path: 'in-online-game-flow', initialChildren: children);

  static const String name = 'InOnlineGameFlowRoute';
}

/// generated route for
/// [_i47.PostOnlineGamePage]
class PostOnlineGamePageRoute extends _i57.PageRouteInfo<void> {
  const PostOnlineGamePageRoute()
      : super(PostOnlineGamePageRoute.name, path: 'post-online-game-page');

  static const String name = 'PostOnlineGamePageRoute';
}

/// generated route for
/// [_i48.CreateOnlineGamePage]
class CreateOnlineGamePageRoute extends _i57.PageRouteInfo<void> {
  const CreateOnlineGamePageRoute()
      : super(CreateOnlineGamePageRoute.name, path: '');

  static const String name = 'CreateOnlineGamePageRoute';
}

/// generated route for
/// [_i49.InOnlineGamePage]
class InOnlineGamePageRoute extends _i57.PageRouteInfo<void> {
  const InOnlineGamePageRoute() : super(InOnlineGamePageRoute.name, path: '');

  static const String name = 'InOnlineGamePageRoute';
}

/// generated route for
/// [_i50.OnlineStatsModal]
class OnlineStatsModalRoute extends _i57.PageRouteInfo<void> {
  const OnlineStatsModalRoute()
      : super(OnlineStatsModalRoute.name, path: 'online-stats-modal');

  static const String name = 'OnlineStatsModalRoute';
}

/// generated route for
/// [_i51.CreateTrainingPage]
class CreateTrainingPageRoute extends _i57.PageRouteInfo<void> {
  const CreateTrainingPageRoute()
      : super(CreateTrainingPageRoute.name, path: '');

  static const String name = 'CreateTrainingPageRoute';
}

/// generated route for
/// [_i52.InBobyTwentySeventTrainingPage]
class InBobyTwentySeventTrainingPageRoute extends _i57.PageRouteInfo<void> {
  const InBobyTwentySeventTrainingPageRoute()
      : super(InBobyTwentySeventTrainingPageRoute.name,
            path: 'in-boby-twenty-sevent-training-page');

  static const String name = 'InBobyTwentySeventTrainingPageRoute';
}

/// generated route for
/// [_i53.InDoubleTrainingPage]
class InDoubleTrainingPageRoute extends _i57.PageRouteInfo<void> {
  const InDoubleTrainingPageRoute()
      : super(InDoubleTrainingPageRoute.name, path: 'in-double-training-page');

  static const String name = 'InDoubleTrainingPageRoute';
}

/// generated route for
/// [_i54.InScoreTrainingPage]
class InScoreTrainingPageRoute extends _i57.PageRouteInfo<void> {
  const InScoreTrainingPageRoute()
      : super(InScoreTrainingPageRoute.name, path: 'in-score-training-page');

  static const String name = 'InScoreTrainingPageRoute';
}

/// generated route for
/// [_i55.InSingleTrainingPage]
class InSingleTrainingPageRoute extends _i57.PageRouteInfo<void> {
  const InSingleTrainingPageRoute()
      : super(InSingleTrainingPageRoute.name, path: 'in-single-training-page');

  static const String name = 'InSingleTrainingPageRoute';
}

/// generated route for
/// [_i56.PostTrainingPage]
class PostTrainingPageRoute extends _i57.PageRouteInfo<void> {
  const PostTrainingPageRoute()
      : super(PostTrainingPageRoute.name, path: 'post-training-page');

  static const String name = 'PostTrainingPageRoute';
}

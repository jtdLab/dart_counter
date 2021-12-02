// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i27;
import 'package:flutter/material.dart' as _i28;

import '../../application/main/game_history/game_history_bloc.dart' as _i31;
import 'auth/auth_flow.dart' as _i1;
import 'core/core.dart' as _i30;
import 'main/contact/contact_page.dart' as _i6;
import 'main/friends/friends_flow.dart' as _i8;
import 'main/friends/overview/overview_page.dart' as _i14;
import 'main/friends/profile/profile_page.dart' as _i15;
import 'main/game_history/details/details_page.dart' as _i17;
import 'main/game_history/game_history_flow.dart' as _i10;
import 'main/game_history/overview/overview_page.dart' as _i16;
import 'main/game_invitations/game_invitations_page.dart' as _i7;
import 'main/home/home_page.dart' as _i3;
import 'main/main_flow.dart' as _i2;
import 'main/play/offline/create_game/create_offline_game_page.dart' as _i18;
import 'main/play/offline/in_game/in_offline_game_page.dart' as _i19;
import 'main/play/offline/play_offline_flow.dart' as _i11;
import 'main/play/offline/post_game/post_offline_game_page.dart' as _i20;
import 'main/play/online/create_game/create_online_game_page.dart' as _i21;
import 'main/play/online/in_game/in_online_game_page.dart' as _i22;
import 'main/play/online/play_online_flow.dart' as _i12;
import 'main/play/online/post_game/post_online_game_page.dart' as _i23;
import 'main/privacy_policy/privacy_policy_page.dart' as _i5;
import 'main/profile/profile_page.dart' as _i9;
import 'main/settings/settings_page.dart' as _i4;
import 'main/training/create_training/create_training_page.dart' as _i24;
import 'main/training/in_training/in_training_page.dart' as _i25;
import 'main/training/post_training/post_training_page.dart' as _i26;
import 'main/training/training_flow.dart' as _i13;
import 'router.dart' as _i29;

class Router extends _i27.RootStackRouter {
  Router([_i28.GlobalKey<_i28.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i27.PageFactory> pagesMap = {
    AuthFlowRoute.name: (routeData) {
      return _i27.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.AuthFlow(),
          customRouteBuilder: _i29.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    MainFlowRoute.name: (routeData) {
      return _i27.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.MainFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    HomePageRoute.name: (routeData) {
      return _i27.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    SettingsPageRoute.name: (routeData) {
      return _i27.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.SettingsPage(),
          customRouteBuilder: _i29.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    PrivacyPolicyPageRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.PrivacyPolicyPage());
    },
    ContactPageRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.ContactPage());
    },
    GameInvitationsPageRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.GameInvitationsPage());
    },
    FriendsFlowRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i8.FriendsFlow());
    },
    ProfilePageRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.ProfilePage());
    },
    GameHistoryFlowRoute.name: (routeData) {
      final args = routeData.argsAs<GameHistoryFlowRouteArgs>();
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i10.GameHistoryFlow(
              key: args.key, gameHistoryBloc: args.gameHistoryBloc));
    },
    PlayOfflineFlowRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i11.PlayOfflineFlow());
    },
    PlayOnlineFlowRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i12.PlayOnlineFlow());
    },
    TrainingFlowRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i13.TrainingFlow());
    },
    FriendsOverviewPageRoute.name: (routeData) {
      return _i27.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i14.OverviewPage(),
          customRouteBuilder: _i29.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    FriendsProfilePageRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i15.ProfilePage());
    },
    GameHistoryOverviewPageRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i16.OverviewPage());
    },
    GameHistoryDetailsPageRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i17.DetailsPage());
    },
    CreateOfflineGamePageRoute.name: (routeData) {
      return _i27.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i18.CreateOfflineGamePage(),
          customRouteBuilder: _i29.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    InOfflineGamePageRoute.name: (routeData) {
      return _i27.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i19.InOfflineGamePage(),
          customRouteBuilder: _i29.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    PostOfflineGamePageRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i20.PostOfflineGamePage());
    },
    CreateOnlineGamePageRoute.name: (routeData) {
      return _i27.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i21.CreateOnlineGamePage(),
          customRouteBuilder: _i29.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    InOnlineGamePageRoute.name: (routeData) {
      return _i27.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i22.InOnlineGamePage(),
          customRouteBuilder: _i29.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    PostOnlineGamePageRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i23.PostOnlineGamePage());
    },
    CreateTrainingPageRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i24.CreateTrainingPage());
    },
    InTrainingPageRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i25.InTrainingPage());
    },
    PostTrainingPageRoute.name: (routeData) {
      return _i27.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i26.PostTrainingPage());
    }
  };

  @override
  List<_i27.RouteConfig> get routes => [
        _i27.RouteConfig(AuthFlowRoute.name, path: '/auth-flow'),
        _i27.RouteConfig(MainFlowRoute.name, path: '/main-flow', children: [
          _i27.RouteConfig(HomePageRoute.name,
              path: '', parent: MainFlowRoute.name),
          _i27.RouteConfig(SettingsPageRoute.name,
              path: 'settings-page', parent: MainFlowRoute.name),
          _i27.RouteConfig(PrivacyPolicyPageRoute.name,
              path: 'privacy-policy-page', parent: MainFlowRoute.name),
          _i27.RouteConfig(ContactPageRoute.name,
              path: 'contact-page', parent: MainFlowRoute.name),
          _i27.RouteConfig(GameInvitationsPageRoute.name,
              path: 'game-invitations-page', parent: MainFlowRoute.name),
          _i27.RouteConfig(FriendsFlowRoute.name,
              path: 'friends-flow',
              parent: MainFlowRoute.name,
              children: [
                _i27.RouteConfig('#redirect',
                    path: '',
                    parent: FriendsFlowRoute.name,
                    redirectTo: 'friends-overview-page',
                    fullMatch: true),
                _i27.RouteConfig(FriendsOverviewPageRoute.name,
                    path: 'friends-overview-page',
                    parent: FriendsFlowRoute.name),
                _i27.RouteConfig(FriendsProfilePageRoute.name,
                    path: 'friends-profile-page', parent: FriendsFlowRoute.name)
              ]),
          _i27.RouteConfig(ProfilePageRoute.name,
              path: 'profile-page', parent: MainFlowRoute.name),
          _i27.RouteConfig(GameHistoryFlowRoute.name,
              path: 'game-history-flow',
              parent: MainFlowRoute.name,
              children: [
                _i27.RouteConfig('#redirect',
                    path: '',
                    parent: GameHistoryFlowRoute.name,
                    redirectTo: 'game-history-overview-page',
                    fullMatch: true),
                _i27.RouteConfig(GameHistoryOverviewPageRoute.name,
                    path: 'game-history-overview-page',
                    parent: GameHistoryFlowRoute.name),
                _i27.RouteConfig(GameHistoryDetailsPageRoute.name,
                    path: 'game-history-details-page',
                    parent: GameHistoryFlowRoute.name)
              ]),
          _i27.RouteConfig(PlayOfflineFlowRoute.name,
              path: 'play-offline-flow',
              parent: MainFlowRoute.name,
              children: [
                _i27.RouteConfig(CreateOfflineGamePageRoute.name,
                    path: '', parent: PlayOfflineFlowRoute.name),
                _i27.RouteConfig(InOfflineGamePageRoute.name,
                    path: 'in-offline-game-page',
                    parent: PlayOfflineFlowRoute.name),
                _i27.RouteConfig(PostOfflineGamePageRoute.name,
                    path: 'post-offline-game-page',
                    parent: PlayOfflineFlowRoute.name)
              ]),
          _i27.RouteConfig(PlayOnlineFlowRoute.name,
              path: 'play-online-flow',
              parent: MainFlowRoute.name,
              children: [
                _i27.RouteConfig(CreateOnlineGamePageRoute.name,
                    path: '', parent: PlayOnlineFlowRoute.name),
                _i27.RouteConfig(InOnlineGamePageRoute.name,
                    path: 'in-online-game-page',
                    parent: PlayOnlineFlowRoute.name),
                _i27.RouteConfig(PostOnlineGamePageRoute.name,
                    path: 'post-online-game-page',
                    parent: PlayOnlineFlowRoute.name)
              ]),
          _i27.RouteConfig(TrainingFlowRoute.name,
              path: 'training-flow',
              parent: MainFlowRoute.name,
              children: [
                _i27.RouteConfig(CreateTrainingPageRoute.name,
                    path: '', parent: TrainingFlowRoute.name),
                _i27.RouteConfig(InTrainingPageRoute.name,
                    path: 'in-training-page', parent: TrainingFlowRoute.name),
                _i27.RouteConfig(PostTrainingPageRoute.name,
                    path: 'post-training-page', parent: TrainingFlowRoute.name)
              ])
        ])
      ];
}

/// generated route for [_i1.AuthFlow]
class AuthFlowRoute extends _i27.PageRouteInfo<void> {
  const AuthFlowRoute() : super(name, path: '/auth-flow');

  static const String name = 'AuthFlowRoute';
}

/// generated route for [_i2.MainFlow]
class MainFlowRoute extends _i27.PageRouteInfo<void> {
  const MainFlowRoute({List<_i27.PageRouteInfo>? children})
      : super(name, path: '/main-flow', initialChildren: children);

  static const String name = 'MainFlowRoute';
}

/// generated route for [_i3.HomePage]
class HomePageRoute extends _i27.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '');

  static const String name = 'HomePageRoute';
}

/// generated route for [_i4.SettingsPage]
class SettingsPageRoute extends _i27.PageRouteInfo<void> {
  const SettingsPageRoute() : super(name, path: 'settings-page');

  static const String name = 'SettingsPageRoute';
}

/// generated route for [_i5.PrivacyPolicyPage]
class PrivacyPolicyPageRoute extends _i27.PageRouteInfo<void> {
  const PrivacyPolicyPageRoute() : super(name, path: 'privacy-policy-page');

  static const String name = 'PrivacyPolicyPageRoute';
}

/// generated route for [_i6.ContactPage]
class ContactPageRoute extends _i27.PageRouteInfo<void> {
  const ContactPageRoute() : super(name, path: 'contact-page');

  static const String name = 'ContactPageRoute';
}

/// generated route for [_i7.GameInvitationsPage]
class GameInvitationsPageRoute extends _i27.PageRouteInfo<void> {
  const GameInvitationsPageRoute() : super(name, path: 'game-invitations-page');

  static const String name = 'GameInvitationsPageRoute';
}

/// generated route for [_i8.FriendsFlow]
class FriendsFlowRoute extends _i27.PageRouteInfo<void> {
  const FriendsFlowRoute({List<_i27.PageRouteInfo>? children})
      : super(name, path: 'friends-flow', initialChildren: children);

  static const String name = 'FriendsFlowRoute';
}

/// generated route for [_i9.ProfilePage]
class ProfilePageRoute extends _i27.PageRouteInfo<void> {
  const ProfilePageRoute() : super(name, path: 'profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for [_i10.GameHistoryFlow]
class GameHistoryFlowRoute
    extends _i27.PageRouteInfo<GameHistoryFlowRouteArgs> {
  GameHistoryFlowRoute(
      {_i30.Key? key,
      required _i31.GameHistoryBloc gameHistoryBloc,
      List<_i27.PageRouteInfo>? children})
      : super(name,
            path: 'game-history-flow',
            args: GameHistoryFlowRouteArgs(
                key: key, gameHistoryBloc: gameHistoryBloc),
            initialChildren: children);

  static const String name = 'GameHistoryFlowRoute';
}

class GameHistoryFlowRouteArgs {
  const GameHistoryFlowRouteArgs({this.key, required this.gameHistoryBloc});

  final _i30.Key? key;

  final _i31.GameHistoryBloc gameHistoryBloc;

  @override
  String toString() {
    return 'GameHistoryFlowRouteArgs{key: $key, gameHistoryBloc: $gameHistoryBloc}';
  }
}

/// generated route for [_i11.PlayOfflineFlow]
class PlayOfflineFlowRoute extends _i27.PageRouteInfo<void> {
  const PlayOfflineFlowRoute({List<_i27.PageRouteInfo>? children})
      : super(name, path: 'play-offline-flow', initialChildren: children);

  static const String name = 'PlayOfflineFlowRoute';
}

/// generated route for [_i12.PlayOnlineFlow]
class PlayOnlineFlowRoute extends _i27.PageRouteInfo<void> {
  const PlayOnlineFlowRoute({List<_i27.PageRouteInfo>? children})
      : super(name, path: 'play-online-flow', initialChildren: children);

  static const String name = 'PlayOnlineFlowRoute';
}

/// generated route for [_i13.TrainingFlow]
class TrainingFlowRoute extends _i27.PageRouteInfo<void> {
  const TrainingFlowRoute({List<_i27.PageRouteInfo>? children})
      : super(name, path: 'training-flow', initialChildren: children);

  static const String name = 'TrainingFlowRoute';
}

/// generated route for [_i14.OverviewPage]
class FriendsOverviewPageRoute extends _i27.PageRouteInfo<void> {
  const FriendsOverviewPageRoute() : super(name, path: 'friends-overview-page');

  static const String name = 'FriendsOverviewPageRoute';
}

/// generated route for [_i15.ProfilePage]
class FriendsProfilePageRoute extends _i27.PageRouteInfo<void> {
  const FriendsProfilePageRoute() : super(name, path: 'friends-profile-page');

  static const String name = 'FriendsProfilePageRoute';
}

/// generated route for [_i16.OverviewPage]
class GameHistoryOverviewPageRoute extends _i27.PageRouteInfo<void> {
  const GameHistoryOverviewPageRoute()
      : super(name, path: 'game-history-overview-page');

  static const String name = 'GameHistoryOverviewPageRoute';
}

/// generated route for [_i17.DetailsPage]
class GameHistoryDetailsPageRoute extends _i27.PageRouteInfo<void> {
  const GameHistoryDetailsPageRoute()
      : super(name, path: 'game-history-details-page');

  static const String name = 'GameHistoryDetailsPageRoute';
}

/// generated route for [_i18.CreateOfflineGamePage]
class CreateOfflineGamePageRoute extends _i27.PageRouteInfo<void> {
  const CreateOfflineGamePageRoute() : super(name, path: '');

  static const String name = 'CreateOfflineGamePageRoute';
}

/// generated route for [_i19.InOfflineGamePage]
class InOfflineGamePageRoute extends _i27.PageRouteInfo<void> {
  const InOfflineGamePageRoute() : super(name, path: 'in-offline-game-page');

  static const String name = 'InOfflineGamePageRoute';
}

/// generated route for [_i20.PostOfflineGamePage]
class PostOfflineGamePageRoute extends _i27.PageRouteInfo<void> {
  const PostOfflineGamePageRoute()
      : super(name, path: 'post-offline-game-page');

  static const String name = 'PostOfflineGamePageRoute';
}

/// generated route for [_i21.CreateOnlineGamePage]
class CreateOnlineGamePageRoute extends _i27.PageRouteInfo<void> {
  const CreateOnlineGamePageRoute() : super(name, path: '');

  static const String name = 'CreateOnlineGamePageRoute';
}

/// generated route for [_i22.InOnlineGamePage]
class InOnlineGamePageRoute extends _i27.PageRouteInfo<void> {
  const InOnlineGamePageRoute() : super(name, path: 'in-online-game-page');

  static const String name = 'InOnlineGamePageRoute';
}

/// generated route for [_i23.PostOnlineGamePage]
class PostOnlineGamePageRoute extends _i27.PageRouteInfo<void> {
  const PostOnlineGamePageRoute() : super(name, path: 'post-online-game-page');

  static const String name = 'PostOnlineGamePageRoute';
}

/// generated route for [_i24.CreateTrainingPage]
class CreateTrainingPageRoute extends _i27.PageRouteInfo<void> {
  const CreateTrainingPageRoute() : super(name, path: '');

  static const String name = 'CreateTrainingPageRoute';
}

/// generated route for [_i25.InTrainingPage]
class InTrainingPageRoute extends _i27.PageRouteInfo<void> {
  const InTrainingPageRoute() : super(name, path: 'in-training-page');

  static const String name = 'InTrainingPageRoute';
}

/// generated route for [_i26.PostTrainingPage]
class PostTrainingPageRoute extends _i27.PageRouteInfo<void> {
  const PostTrainingPageRoute() : super(name, path: 'post-training-page');

  static const String name = 'PostTrainingPageRoute';
}

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i23;
import 'package:flutter/material.dart' as _i24;

import '../../application/game_history/game_history_bloc.dart' as _i27;
import '../../domain/play/game_snapshot.dart' as _i28;
import 'auth/auth_flow.dart' as _i1;
import 'core/core.dart' as _i26;
import 'main/contact/contact_page.dart' as _i6;
import 'main/friends/friends_flow.dart' as _i8;
import 'main/friends/overview/overview_page.dart' as _i13;
import 'main/friends/profile/profile_page.dart' as _i14;
import 'main/game/create_game/create_game_page.dart' as _i17;
import 'main/game/game_flow.dart' as _i11;
import 'main/game/in_game/in_game_page.dart' as _i18;
import 'main/game/post_game/post_game_page.dart' as _i19;
import 'main/game_history/details/details_page.dart' as _i16;
import 'main/game_history/game_history_flow.dart' as _i10;
import 'main/game_history/overview/overview_page.dart' as _i15;
import 'main/game_invitations/game_invitations_page.dart' as _i7;
import 'main/home/home_page.dart' as _i3;
import 'main/main_flow.dart' as _i2;
import 'main/privacy_policy/privacy_policy_page.dart' as _i5;
import 'main/profile/profile_page.dart' as _i9;
import 'main/settings/settings_page.dart' as _i4;
import 'main/training/create_training/create_training_page.dart' as _i20;
import 'main/training/in_training/in_training_page.dart' as _i21;
import 'main/training/post_training/post_training_page.dart' as _i22;
import 'main/training/training_flow.dart' as _i12;
import 'router.dart' as _i25;

class Router extends _i23.RootStackRouter {
  Router([_i24.GlobalKey<_i24.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i23.PageFactory> pagesMap = {
    AuthFlowRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.AuthFlow(),
          customRouteBuilder: _i25.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    MainFlowRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.MainFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    HomePageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    SettingsPageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.SettingsPage(),
          customRouteBuilder: _i25.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    PrivacyPolicyPageRoute.name: (routeData) {
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.PrivacyPolicyPage());
    },
    ContactPageRoute.name: (routeData) {
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.ContactPage());
    },
    GameInvitationsPageRoute.name: (routeData) {
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.GameInvitationsPage());
    },
    FriendsFlowRoute.name: (routeData) {
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i8.FriendsFlow());
    },
    ProfilePageRoute.name: (routeData) {
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.ProfilePage());
    },
    GameHistoryFlowRoute.name: (routeData) {
      final args = routeData.argsAs<GameHistoryFlowRouteArgs>();
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i10.GameHistoryFlow(
              key: args.key, gameHistoryBloc: args.gameHistoryBloc));
    },
    GameFlowRoute.name: (routeData) {
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i11.GameFlow());
    },
    TrainingFlowRoute.name: (routeData) {
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i12.TrainingFlow());
    },
    FriendsOverviewPageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i13.OverviewPage(),
          customRouteBuilder: _i25.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    FriendsProfilePageRoute.name: (routeData) {
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i14.ProfilePage());
    },
    OverviewPageRoute.name: (routeData) {
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i15.OverviewPage());
    },
    DetailsPageRoute.name: (routeData) {
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i16.DetailsPage());
    },
    CreateGamePageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i17.CreateGamePage(),
          customRouteBuilder: _i25.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    InGamePageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i18.InGamePage(),
          customRouteBuilder: _i25.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    PostGamePageRoute.name: (routeData) {
      final args = routeData.argsAs<PostGamePageRouteArgs>();
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i19.PostGamePage(
              key: args.key, gameSnapshot: args.gameSnapshot));
    },
    CreateTrainingPageRoute.name: (routeData) {
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i20.CreateTrainingPage());
    },
    InTrainingPageRoute.name: (routeData) {
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i21.InTrainingPage());
    },
    PostTrainingPageRoute.name: (routeData) {
      return _i23.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i22.PostTrainingPage());
    }
  };

  @override
  List<_i23.RouteConfig> get routes => [
        _i23.RouteConfig(AuthFlowRoute.name, path: '/auth-flow'),
        _i23.RouteConfig(MainFlowRoute.name, path: '/main-flow', children: [
          _i23.RouteConfig(HomePageRoute.name,
              path: '', parent: MainFlowRoute.name),
          _i23.RouteConfig(SettingsPageRoute.name,
              path: 'settings-page', parent: MainFlowRoute.name),
          _i23.RouteConfig(PrivacyPolicyPageRoute.name,
              path: 'privacy-policy-page', parent: MainFlowRoute.name),
          _i23.RouteConfig(ContactPageRoute.name,
              path: 'contact-page', parent: MainFlowRoute.name),
          _i23.RouteConfig(GameInvitationsPageRoute.name,
              path: 'game-invitations-page', parent: MainFlowRoute.name),
          _i23.RouteConfig(FriendsFlowRoute.name,
              path: 'friends-flow',
              parent: MainFlowRoute.name,
              children: [
                _i23.RouteConfig('#redirect',
                    path: '',
                    parent: FriendsFlowRoute.name,
                    redirectTo: 'friends-overview-page',
                    fullMatch: true),
                _i23.RouteConfig(FriendsOverviewPageRoute.name,
                    path: 'friends-overview-page',
                    parent: FriendsFlowRoute.name),
                _i23.RouteConfig(FriendsProfilePageRoute.name,
                    path: 'friends-profile-page', parent: FriendsFlowRoute.name)
              ]),
          _i23.RouteConfig(ProfilePageRoute.name,
              path: 'profile-page', parent: MainFlowRoute.name),
          _i23.RouteConfig(GameHistoryFlowRoute.name,
              path: 'game-history-flow',
              parent: MainFlowRoute.name,
              children: [
                _i23.RouteConfig(OverviewPageRoute.name,
                    path: '', parent: GameHistoryFlowRoute.name),
                _i23.RouteConfig(DetailsPageRoute.name,
                    path: 'details-page', parent: GameHistoryFlowRoute.name)
              ]),
          _i23.RouteConfig(GameFlowRoute.name,
              path: 'game-flow',
              parent: MainFlowRoute.name,
              children: [
                _i23.RouteConfig(CreateGamePageRoute.name,
                    path: '', parent: GameFlowRoute.name),
                _i23.RouteConfig(InGamePageRoute.name,
                    path: 'in-game-page', parent: GameFlowRoute.name),
                _i23.RouteConfig(PostGamePageRoute.name,
                    path: 'post-game-page', parent: GameFlowRoute.name)
              ]),
          _i23.RouteConfig(TrainingFlowRoute.name,
              path: 'training-flow',
              parent: MainFlowRoute.name,
              children: [
                _i23.RouteConfig(CreateTrainingPageRoute.name,
                    path: '', parent: TrainingFlowRoute.name),
                _i23.RouteConfig(InTrainingPageRoute.name,
                    path: 'in-training-page', parent: TrainingFlowRoute.name),
                _i23.RouteConfig(PostTrainingPageRoute.name,
                    path: 'post-training-page', parent: TrainingFlowRoute.name)
              ])
        ])
      ];
}

/// generated route for [_i1.AuthFlow]
class AuthFlowRoute extends _i23.PageRouteInfo<void> {
  const AuthFlowRoute() : super(name, path: '/auth-flow');

  static const String name = 'AuthFlowRoute';
}

/// generated route for [_i2.MainFlow]
class MainFlowRoute extends _i23.PageRouteInfo<void> {
  const MainFlowRoute({List<_i23.PageRouteInfo>? children})
      : super(name, path: '/main-flow', initialChildren: children);

  static const String name = 'MainFlowRoute';
}

/// generated route for [_i3.HomePage]
class HomePageRoute extends _i23.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '');

  static const String name = 'HomePageRoute';
}

/// generated route for [_i4.SettingsPage]
class SettingsPageRoute extends _i23.PageRouteInfo<void> {
  const SettingsPageRoute() : super(name, path: 'settings-page');

  static const String name = 'SettingsPageRoute';
}

/// generated route for [_i5.PrivacyPolicyPage]
class PrivacyPolicyPageRoute extends _i23.PageRouteInfo<void> {
  const PrivacyPolicyPageRoute() : super(name, path: 'privacy-policy-page');

  static const String name = 'PrivacyPolicyPageRoute';
}

/// generated route for [_i6.ContactPage]
class ContactPageRoute extends _i23.PageRouteInfo<void> {
  const ContactPageRoute() : super(name, path: 'contact-page');

  static const String name = 'ContactPageRoute';
}

/// generated route for [_i7.GameInvitationsPage]
class GameInvitationsPageRoute extends _i23.PageRouteInfo<void> {
  const GameInvitationsPageRoute() : super(name, path: 'game-invitations-page');

  static const String name = 'GameInvitationsPageRoute';
}

/// generated route for [_i8.FriendsFlow]
class FriendsFlowRoute extends _i23.PageRouteInfo<void> {
  const FriendsFlowRoute({List<_i23.PageRouteInfo>? children})
      : super(name, path: 'friends-flow', initialChildren: children);

  static const String name = 'FriendsFlowRoute';
}

/// generated route for [_i9.ProfilePage]
class ProfilePageRoute extends _i23.PageRouteInfo<void> {
  const ProfilePageRoute() : super(name, path: 'profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for [_i10.GameHistoryFlow]
class GameHistoryFlowRoute
    extends _i23.PageRouteInfo<GameHistoryFlowRouteArgs> {
  GameHistoryFlowRoute(
      {_i26.Key? key,
      required _i27.GameHistoryBloc gameHistoryBloc,
      List<_i23.PageRouteInfo>? children})
      : super(name,
            path: 'game-history-flow',
            args: GameHistoryFlowRouteArgs(
                key: key, gameHistoryBloc: gameHistoryBloc),
            initialChildren: children);

  static const String name = 'GameHistoryFlowRoute';
}

class GameHistoryFlowRouteArgs {
  const GameHistoryFlowRouteArgs({this.key, required this.gameHistoryBloc});

  final _i26.Key? key;

  final _i27.GameHistoryBloc gameHistoryBloc;
}

/// generated route for [_i11.GameFlow]
class GameFlowRoute extends _i23.PageRouteInfo<void> {
  const GameFlowRoute({List<_i23.PageRouteInfo>? children})
      : super(name, path: 'game-flow', initialChildren: children);

  static const String name = 'GameFlowRoute';
}

/// generated route for [_i12.TrainingFlow]
class TrainingFlowRoute extends _i23.PageRouteInfo<void> {
  const TrainingFlowRoute({List<_i23.PageRouteInfo>? children})
      : super(name, path: 'training-flow', initialChildren: children);

  static const String name = 'TrainingFlowRoute';
}

/// generated route for [_i13.OverviewPage]
class FriendsOverviewPageRoute extends _i23.PageRouteInfo<void> {
  const FriendsOverviewPageRoute() : super(name, path: 'friends-overview-page');

  static const String name = 'FriendsOverviewPageRoute';
}

/// generated route for [_i14.ProfilePage]
class FriendsProfilePageRoute extends _i23.PageRouteInfo<void> {
  const FriendsProfilePageRoute() : super(name, path: 'friends-profile-page');

  static const String name = 'FriendsProfilePageRoute';
}

/// generated route for [_i15.OverviewPage]
class OverviewPageRoute extends _i23.PageRouteInfo<void> {
  const OverviewPageRoute() : super(name, path: '');

  static const String name = 'OverviewPageRoute';
}

/// generated route for [_i16.DetailsPage]
class DetailsPageRoute extends _i23.PageRouteInfo<void> {
  const DetailsPageRoute() : super(name, path: 'details-page');

  static const String name = 'DetailsPageRoute';
}

/// generated route for [_i17.CreateGamePage]
class CreateGamePageRoute extends _i23.PageRouteInfo<void> {
  const CreateGamePageRoute() : super(name, path: '');

  static const String name = 'CreateGamePageRoute';
}

/// generated route for [_i18.InGamePage]
class InGamePageRoute extends _i23.PageRouteInfo<void> {
  const InGamePageRoute() : super(name, path: 'in-game-page');

  static const String name = 'InGamePageRoute';
}

/// generated route for [_i19.PostGamePage]
class PostGamePageRoute extends _i23.PageRouteInfo<PostGamePageRouteArgs> {
  PostGamePageRoute({_i26.Key? key, required _i28.GameSnapshot gameSnapshot})
      : super(name,
            path: 'post-game-page',
            args: PostGamePageRouteArgs(key: key, gameSnapshot: gameSnapshot));

  static const String name = 'PostGamePageRoute';
}

class PostGamePageRouteArgs {
  const PostGamePageRouteArgs({this.key, required this.gameSnapshot});

  final _i26.Key? key;

  final _i28.GameSnapshot gameSnapshot;
}

/// generated route for [_i20.CreateTrainingPage]
class CreateTrainingPageRoute extends _i23.PageRouteInfo<void> {
  const CreateTrainingPageRoute() : super(name, path: '');

  static const String name = 'CreateTrainingPageRoute';
}

/// generated route for [_i21.InTrainingPage]
class InTrainingPageRoute extends _i23.PageRouteInfo<void> {
  const InTrainingPageRoute() : super(name, path: 'in-training-page');

  static const String name = 'InTrainingPageRoute';
}

/// generated route for [_i22.PostTrainingPage]
class PostTrainingPageRoute extends _i23.PageRouteInfo<void> {
  const PostTrainingPageRoute() : super(name, path: 'post-training-page');

  static const String name = 'PostTrainingPageRoute';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

import 'auth/auth_flow.dart' as _i1;
import 'main/contact/contact_page.dart' as _i6;
import 'main/friends/friends_flow.dart' as _i8;
import 'main/friends/overview/overview_page.dart' as _i12;
import 'main/friends/profile/profile_page.dart' as _i9;
import 'main/game/create_game/create_game_page.dart' as _i15;
import 'main/game/game_flow.dart' as _i11;
import 'main/game/in_game/in_game_page.dart' as _i16;
import 'main/game/post_game/post_game_page.dart' as _i17;
import 'main/game_history/game_history_details/game_history_details_page.dart'
    as _i14;
import 'main/game_history/game_history_flow.dart' as _i10;
import 'main/game_history/game_history_overview/game_history_overview_page.dart'
    as _i13;
import 'main/game_invitations/game_invitations_page.dart' as _i7;
import 'main/home/home_page.dart' as _i3;
import 'main/main_flow.dart' as _i2;
import 'main/privacy_policy/privacy_policy_page.dart' as _i5;
import 'main/settings/settings_page.dart' as _i4;
import 'router.dart' as _i20;

class Router extends _i18.RootStackRouter {
  Router([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    AuthFlowRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.AuthFlow(),
          customRouteBuilder: _i20.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    MainFlowRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.MainFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    HomePageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    SettingsPageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.SettingsPage(),
          customRouteBuilder: _i20.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    PrivacyPolicyPageRoute.name: (routeData) {
      return _i18.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.PrivacyPolicyPage());
    },
    ContactPageRoute.name: (routeData) {
      return _i18.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.ContactPage());
    },
    GameInvitationsPageRoute.name: (routeData) {
      return _i18.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.GameInvitationsPage());
    },
    FriendsFlowRoute.name: (routeData) {
      return _i18.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i8.FriendsFlow());
    },
    ProfilePageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.ProfilePage(),
          reverseDurationInMilliseconds: 0,
          opaque: true,
          barrierDismissible: false);
    },
    GameHistoryFlowRoute.name: (routeData) {
      return _i18.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i10.GameHistoryFlow());
    },
    GameFlowRoute.name: (routeData) {
      return _i18.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i11.GameFlow());
    },
    OverviewPageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i12.OverviewPage(),
          customRouteBuilder: _i20.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    GameHistoryOverviewPageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i13.GameHistoryOverviewPage(),
          opaque: true,
          barrierDismissible: false);
    },
    GameHistoryDetailsPageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i14.GameHistoryDetailsPage(),
          reverseDurationInMilliseconds: 0,
          opaque: true,
          barrierDismissible: false);
    },
    CreateGamePageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i15.CreateGamePage(),
          customRouteBuilder: _i20.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    InGamePageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i16.InGamePage(),
          customRouteBuilder: _i20.customRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    PostGamePageRoute.name: (routeData) {
      return _i18.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i17.PostGamePage());
    }
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(AuthFlowRoute.name, path: '/auth-flow'),
        _i18.RouteConfig(MainFlowRoute.name, path: '/main-flow', children: [
          _i18.RouteConfig(HomePageRoute.name, path: ''),
          _i18.RouteConfig(SettingsPageRoute.name, path: 'settings-page'),
          _i18.RouteConfig(PrivacyPolicyPageRoute.name,
              path: 'privacy-policy-page'),
          _i18.RouteConfig(ContactPageRoute.name, path: 'contact-page'),
          _i18.RouteConfig(GameInvitationsPageRoute.name,
              path: 'game-invitations-page'),
          _i18.RouteConfig(FriendsFlowRoute.name,
              path: 'friends-flow',
              children: [
                _i18.RouteConfig(OverviewPageRoute.name, path: ''),
                _i18.RouteConfig(ProfilePageRoute.name, path: 'profile-page')
              ]),
          _i18.RouteConfig(ProfilePageRoute.name, path: 'profile-page'),
          _i18.RouteConfig(GameHistoryFlowRoute.name,
              path: 'game-history-flow',
              children: [
                _i18.RouteConfig(GameHistoryOverviewPageRoute.name, path: ''),
                _i18.RouteConfig(GameHistoryDetailsPageRoute.name,
                    path: 'game-history-details-page')
              ]),
          _i18.RouteConfig(GameFlowRoute.name, path: 'game-flow', children: [
            _i18.RouteConfig(CreateGamePageRoute.name, path: ''),
            _i18.RouteConfig(InGamePageRoute.name, path: 'in-game-page'),
            _i18.RouteConfig(PostGamePageRoute.name, path: 'post-game-page')
          ])
        ])
      ];
}

/// generated route for [_i1.AuthFlow]
class AuthFlowRoute extends _i18.PageRouteInfo<void> {
  const AuthFlowRoute() : super(name, path: '/auth-flow');

  static const String name = 'AuthFlowRoute';
}

/// generated route for [_i2.MainFlow]
class MainFlowRoute extends _i18.PageRouteInfo<void> {
  const MainFlowRoute({List<_i18.PageRouteInfo>? children})
      : super(name, path: '/main-flow', initialChildren: children);

  static const String name = 'MainFlowRoute';
}

/// generated route for [_i3.HomePage]
class HomePageRoute extends _i18.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '');

  static const String name = 'HomePageRoute';
}

/// generated route for [_i4.SettingsPage]
class SettingsPageRoute extends _i18.PageRouteInfo<void> {
  const SettingsPageRoute() : super(name, path: 'settings-page');

  static const String name = 'SettingsPageRoute';
}

/// generated route for [_i5.PrivacyPolicyPage]
class PrivacyPolicyPageRoute extends _i18.PageRouteInfo<void> {
  const PrivacyPolicyPageRoute() : super(name, path: 'privacy-policy-page');

  static const String name = 'PrivacyPolicyPageRoute';
}

/// generated route for [_i6.ContactPage]
class ContactPageRoute extends _i18.PageRouteInfo<void> {
  const ContactPageRoute() : super(name, path: 'contact-page');

  static const String name = 'ContactPageRoute';
}

/// generated route for [_i7.GameInvitationsPage]
class GameInvitationsPageRoute extends _i18.PageRouteInfo<void> {
  const GameInvitationsPageRoute() : super(name, path: 'game-invitations-page');

  static const String name = 'GameInvitationsPageRoute';
}

/// generated route for [_i8.FriendsFlow]
class FriendsFlowRoute extends _i18.PageRouteInfo<void> {
  const FriendsFlowRoute({List<_i18.PageRouteInfo>? children})
      : super(name, path: 'friends-flow', initialChildren: children);

  static const String name = 'FriendsFlowRoute';
}

/// generated route for [_i9.ProfilePage]
class ProfilePageRoute extends _i18.PageRouteInfo<void> {
  const ProfilePageRoute() : super(name, path: 'profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for [_i10.GameHistoryFlow]
class GameHistoryFlowRoute extends _i18.PageRouteInfo<void> {
  const GameHistoryFlowRoute({List<_i18.PageRouteInfo>? children})
      : super(name, path: 'game-history-flow', initialChildren: children);

  static const String name = 'GameHistoryFlowRoute';
}

/// generated route for [_i11.GameFlow]
class GameFlowRoute extends _i18.PageRouteInfo<void> {
  const GameFlowRoute({List<_i18.PageRouteInfo>? children})
      : super(name, path: 'game-flow', initialChildren: children);

  static const String name = 'GameFlowRoute';
}

/// generated route for [_i12.OverviewPage]
class OverviewPageRoute extends _i18.PageRouteInfo<void> {
  const OverviewPageRoute() : super(name, path: '');

  static const String name = 'OverviewPageRoute';
}

/// generated route for [_i13.GameHistoryOverviewPage]
class GameHistoryOverviewPageRoute extends _i18.PageRouteInfo<void> {
  const GameHistoryOverviewPageRoute() : super(name, path: '');

  static const String name = 'GameHistoryOverviewPageRoute';
}

/// generated route for [_i14.GameHistoryDetailsPage]
class GameHistoryDetailsPageRoute extends _i18.PageRouteInfo<void> {
  const GameHistoryDetailsPageRoute()
      : super(name, path: 'game-history-details-page');

  static const String name = 'GameHistoryDetailsPageRoute';
}

/// generated route for [_i15.CreateGamePage]
class CreateGamePageRoute extends _i18.PageRouteInfo<void> {
  const CreateGamePageRoute() : super(name, path: '');

  static const String name = 'CreateGamePageRoute';
}

/// generated route for [_i16.InGamePage]
class InGamePageRoute extends _i18.PageRouteInfo<void> {
  const InGamePageRoute() : super(name, path: 'in-game-page');

  static const String name = 'InGamePageRoute';
}

/// generated route for [_i17.PostGamePage]
class PostGamePageRoute extends _i18.PageRouteInfo<void> {
  const PostGamePageRoute() : super(name, path: 'post-game-page');

  static const String name = 'PostGamePageRoute';
}

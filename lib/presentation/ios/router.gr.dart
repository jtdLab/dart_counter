// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'auth/auth_flow.dart' as _i3;
import 'main/contact/contact_page.dart' as _i9;
import 'main/friends/friends_flow.dart' as _i11;
import 'main/friends/friends_overview/friends_overview_page.dart' as _i15;
import 'main/friends/friends_profile/friends_profile_page.dart' as _i16;
import 'main/game/create_game/create_game_page.dart' as _i19;
import 'main/game/game_flow.dart' as _i14;
import 'main/game/in_game/in_game_page.dart' as _i20;
import 'main/game/post_game/post_game_page.dart' as _i21;
import 'main/game_history/game_history_details/game_history_details_page.dart'
    as _i18;
import 'main/game_history/game_history_flow.dart' as _i13;
import 'main/game_history/game_history_overview/game_history_overview_page.dart'
    as _i17;
import 'main/home/home_page.dart' as _i6;
import 'main/invitations/invitations_page.dart' as _i10;
import 'main/main_flow.dart' as _i5;
import 'main/privacy_policy/privacy_policy_page.dart' as _i8;
import 'main/profile/profile_page.dart' as _i12;
import 'main/settings/settings_page.dart' as _i7;
import 'router.dart' as _i4;

class Router extends _i1.RootStackRouter {
  Router([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    AuthFlowRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.AuthFlow();
        },
        customRouteBuilder: _i4.customRouteBuilder,
        opaque: true,
        barrierDismissible: false),
    MainFlowRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.MainFlow();
        },
        opaque: true,
        barrierDismissible: false),
    HomePageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.HomePage();
        },
        opaque: true,
        barrierDismissible: false),
    SettingsPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.SettingsPage();
        },
        customRouteBuilder: _i4.customRouteBuilder,
        opaque: true,
        barrierDismissible: false),
    PrivacyPolicyPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.PrivacyPolicyPage();
        }),
    ContactPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.ContactPage();
        }),
    InvitationsPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.InvitationsPage();
        }),
    FriendsFlowRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i11.FriendsFlow();
        }),
    ProfilePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i12.ProfilePage();
        }),
    GameHistoryFlowRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i13.GameHistoryFlow();
        }),
    GameFlowRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i14.GameFlow();
        }),
    FriendsOverviewPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i15.FriendsOverviewPage();
        },
        customRouteBuilder: _i4.customRouteBuilder,
        opaque: true,
        barrierDismissible: false),
    FriendsProfilePageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i16.FriendsProfilePage();
        },
        reverseDurationInMilliseconds: 0,
        opaque: true,
        barrierDismissible: false),
    GameHistoryOverviewPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i17.GameHistoryOverviewPage();
        },
        opaque: true,
        barrierDismissible: false),
    GameHistoryDetailsPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i18.GameHistoryDetailsPage();
        },
        reverseDurationInMilliseconds: 0,
        opaque: true,
        barrierDismissible: false),
    CreateGamePageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i19.CreateGamePage();
        },
        customRouteBuilder: _i4.customRouteBuilder,
        opaque: true,
        barrierDismissible: false),
    InGamePageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i20.InGamePage();
        },
        customRouteBuilder: _i4.customRouteBuilder,
        opaque: true,
        barrierDismissible: false),
    PostGamePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i21.PostGamePage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(AuthFlowRoute.name, path: '/auth-flow'),
        _i1.RouteConfig(MainFlowRoute.name, path: '/main-flow', children: [
          _i1.RouteConfig(HomePageRoute.name, path: ''),
          _i1.RouteConfig(SettingsPageRoute.name, path: 'settings-page'),
          _i1.RouteConfig(PrivacyPolicyPageRoute.name,
              path: 'privacy-policy-page'),
          _i1.RouteConfig(ContactPageRoute.name, path: 'contact-page'),
          _i1.RouteConfig(InvitationsPageRoute.name, path: 'invitations-page'),
          _i1.RouteConfig(FriendsFlowRoute.name,
              path: 'friends-flow',
              children: [
                _i1.RouteConfig(FriendsOverviewPageRoute.name, path: ''),
                _i1.RouteConfig(FriendsProfilePageRoute.name,
                    path: 'friends-profile-page')
              ]),
          _i1.RouteConfig(ProfilePageRoute.name, path: 'profile-page'),
          _i1.RouteConfig(GameHistoryFlowRoute.name,
              path: 'game-history-flow',
              children: [
                _i1.RouteConfig(GameHistoryOverviewPageRoute.name, path: ''),
                _i1.RouteConfig(GameHistoryDetailsPageRoute.name,
                    path: 'game-history-details-page')
              ]),
          _i1.RouteConfig(GameFlowRoute.name, path: 'game-flow', children: [
            _i1.RouteConfig(CreateGamePageRoute.name, path: ''),
            _i1.RouteConfig(InGamePageRoute.name, path: 'in-game-page'),
            _i1.RouteConfig(PostGamePageRoute.name, path: 'post-game-page')
          ])
        ])
      ];
}

class AuthFlowRoute extends _i1.PageRouteInfo {
  const AuthFlowRoute() : super(name, path: '/auth-flow');

  static const String name = 'AuthFlowRoute';
}

class MainFlowRoute extends _i1.PageRouteInfo {
  const MainFlowRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/main-flow', initialChildren: children);

  static const String name = 'MainFlowRoute';
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '');

  static const String name = 'HomePageRoute';
}

class SettingsPageRoute extends _i1.PageRouteInfo {
  const SettingsPageRoute() : super(name, path: 'settings-page');

  static const String name = 'SettingsPageRoute';
}

class PrivacyPolicyPageRoute extends _i1.PageRouteInfo {
  const PrivacyPolicyPageRoute() : super(name, path: 'privacy-policy-page');

  static const String name = 'PrivacyPolicyPageRoute';
}

class ContactPageRoute extends _i1.PageRouteInfo {
  const ContactPageRoute() : super(name, path: 'contact-page');

  static const String name = 'ContactPageRoute';
}

class InvitationsPageRoute extends _i1.PageRouteInfo {
  const InvitationsPageRoute() : super(name, path: 'invitations-page');

  static const String name = 'InvitationsPageRoute';
}

class FriendsFlowRoute extends _i1.PageRouteInfo {
  const FriendsFlowRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'friends-flow', initialChildren: children);

  static const String name = 'FriendsFlowRoute';
}

class ProfilePageRoute extends _i1.PageRouteInfo {
  const ProfilePageRoute() : super(name, path: 'profile-page');

  static const String name = 'ProfilePageRoute';
}

class GameHistoryFlowRoute extends _i1.PageRouteInfo {
  const GameHistoryFlowRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'game-history-flow', initialChildren: children);

  static const String name = 'GameHistoryFlowRoute';
}

class GameFlowRoute extends _i1.PageRouteInfo {
  const GameFlowRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'game-flow', initialChildren: children);

  static const String name = 'GameFlowRoute';
}

class FriendsOverviewPageRoute extends _i1.PageRouteInfo {
  const FriendsOverviewPageRoute() : super(name, path: '');

  static const String name = 'FriendsOverviewPageRoute';
}

class FriendsProfilePageRoute extends _i1.PageRouteInfo {
  const FriendsProfilePageRoute() : super(name, path: 'friends-profile-page');

  static const String name = 'FriendsProfilePageRoute';
}

class GameHistoryOverviewPageRoute extends _i1.PageRouteInfo {
  const GameHistoryOverviewPageRoute() : super(name, path: '');

  static const String name = 'GameHistoryOverviewPageRoute';
}

class GameHistoryDetailsPageRoute extends _i1.PageRouteInfo {
  const GameHistoryDetailsPageRoute()
      : super(name, path: 'game-history-details-page');

  static const String name = 'GameHistoryDetailsPageRoute';
}

class CreateGamePageRoute extends _i1.PageRouteInfo {
  const CreateGamePageRoute() : super(name, path: '');

  static const String name = 'CreateGamePageRoute';
}

class InGamePageRoute extends _i1.PageRouteInfo {
  const InGamePageRoute() : super(name, path: 'in-game-page');

  static const String name = 'InGamePageRoute';
}

class PostGamePageRoute extends _i1.PageRouteInfo {
  const PostGamePageRoute() : super(name, path: 'post-game-page');

  static const String name = 'PostGamePageRoute';
}

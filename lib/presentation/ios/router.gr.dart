// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'auth/auth_flow.dart' as _i3;
import 'main/friends/friends_page.dart' as _i11;
import 'main/game/create_game/create_game_page.dart' as _i17;
import 'main/game/game_flow.dart' as _i14;
import 'main/game/in_game/in_game_page.dart' as _i18;
import 'main/game/post_game/post_game_page.dart' as _i19;
import 'main/game_history/game_history_details/game_history_details_page.dart'
    as _i16;
import 'main/game_history/game_history_flow.dart' as _i13;
import 'main/game_history/game_history_overview/game_history_overview_page.dart'
    as _i15;
import 'main/home/home_page.dart' as _i6;
import 'main/impressum/impressum_page.dart' as _i9;
import 'main/invitations/invitations_page.dart' as _i10;
import 'main/legal/legal_page.dart' as _i8;
import 'main/loading/loading_page.dart' as _i5;
import 'main/main_flow.dart' as _i4;
import 'main/profile/profile_page.dart' as _i12;
import 'main/settings/settings_page.dart' as _i7;

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
        opaque: true,
        barrierDismissible: false),
    MainFlowRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.MainFlow();
        },
        opaque: true,
        barrierDismissible: false),
    LoadingPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.LoadingPage();
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
    SettingsPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.SettingsPage();
        }),
    LegalPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.LegalPage();
        }),
    ImpressumPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.ImpressumPage();
        }),
    InvitationsPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.InvitationsPage();
        }),
    FriendsPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i11.FriendsPage();
        }),
    ProfilePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.ProfilePage();
        }),
    GameHistoryFlowRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i13.GameHistoryFlow();
        }),
    GameFlowRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i14.GameFlow();
        }),
    GameHistoryOverviewPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i15.GameHistoryOverviewPage();
        },
        opaque: true,
        barrierDismissible: false),
    GameHistoryDetailsPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i16.GameHistoryDetailsPage();
        },
        reverseDurationInMilliseconds: 0,
        opaque: true,
        barrierDismissible: false),
    CreateGamePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i17.CreateGamePage();
        }),
    InGamePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i18.InGamePage();
        }),
    PostGamePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i19.PostGamePage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(AuthFlowRoute.name, path: '/auth-flow'),
        _i1.RouteConfig(MainFlowRoute.name, path: '/main-flow', children: [
          _i1.RouteConfig(LoadingPageRoute.name, path: ''),
          _i1.RouteConfig(HomePageRoute.name, path: 'home-page'),
          _i1.RouteConfig(SettingsPageRoute.name, path: 'settings-page'),
          _i1.RouteConfig(LegalPageRoute.name, path: 'legal-page'),
          _i1.RouteConfig(ImpressumPageRoute.name, path: 'impressum-page'),
          _i1.RouteConfig(InvitationsPageRoute.name, path: 'invitations-page'),
          _i1.RouteConfig(FriendsPageRoute.name, path: 'friends-page'),
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

class LoadingPageRoute extends _i1.PageRouteInfo {
  const LoadingPageRoute() : super(name, path: '');

  static const String name = 'LoadingPageRoute';
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: 'home-page');

  static const String name = 'HomePageRoute';
}

class SettingsPageRoute extends _i1.PageRouteInfo {
  const SettingsPageRoute() : super(name, path: 'settings-page');

  static const String name = 'SettingsPageRoute';
}

class LegalPageRoute extends _i1.PageRouteInfo {
  const LegalPageRoute() : super(name, path: 'legal-page');

  static const String name = 'LegalPageRoute';
}

class ImpressumPageRoute extends _i1.PageRouteInfo {
  const ImpressumPageRoute() : super(name, path: 'impressum-page');

  static const String name = 'ImpressumPageRoute';
}

class InvitationsPageRoute extends _i1.PageRouteInfo {
  const InvitationsPageRoute() : super(name, path: 'invitations-page');

  static const String name = 'InvitationsPageRoute';
}

class FriendsPageRoute extends _i1.PageRouteInfo {
  const FriendsPageRoute() : super(name, path: 'friends-page');

  static const String name = 'FriendsPageRoute';
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

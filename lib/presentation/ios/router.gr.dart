// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/play/game.dart' as _i20;
import 'auth/auth_page.dart' as _i4;
import 'core/core.dart' as _i19;
import 'create_game/create_game_page.dart' as _i16;
import 'friends/friends_page.dart' as _i10;
import 'game/game_page.dart' as _i13;
import 'game_history/game_history_page.dart' as _i12;
import 'game_history_details/game_history_details_page.dart' as _i15;
import 'game_history_overview/game_history_overview_page.dart' as _i14;
import 'home/home_page.dart' as _i5;
import 'impressum/impressum_page.dart' as _i8;
import 'in_game/in_game_page.dart' as _i17;
import 'invitations/invitations_page.dart' as _i9;
import 'legal/legal_page.dart' as _i7;
import 'post_game/post_game_page.dart' as _i18;
import 'profile/profile_page.dart' as _i11;
import 'settings/settings_page.dart' as _i6;
import 'splash/splash_page.dart' as _i3;

class Router extends _i1.RootStackRouter {
  Router([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashPage();
        },
        opaque: true,
        barrierDismissible: false),
    AuthPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.AuthPage();
        },
        opaque: true,
        barrierDismissible: false),
    HomePageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.HomePage();
        },
        opaque: true,
        barrierDismissible: false),
    SettingsPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.SettingsPage();
        }),
    LegalPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.LegalPage();
        }),
    ImpressumPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.ImpressumPage();
        }),
    InvitationsPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.InvitationsPage();
        }),
    FriendsPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.FriendsPage();
        }),
    ProfilePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.ProfilePage();
        }),
    GameHistoryPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.GameHistoryPage();
        }),
    GamePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i13.GamePage();
        }),
    GameHistoryOverviewPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i14.GameHistoryOverviewPage();
        },
        opaque: true,
        barrierDismissible: false),
    GameHistoryDetailsPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<GameHistoryDetailsPageRouteArgs>();
          return _i15.GameHistoryDetailsPage(key: args.key, game: args.game);
        },
        reverseDurationInMilliseconds: 0,
        opaque: true,
        barrierDismissible: false),
    CreateGamePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i16.CreateGamePage();
        }),
    InGamePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i17.InGamePage();
        }),
    PostGamePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i18.PostGamePage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(AuthPageRoute.name, path: '/auth-page'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i1.RouteConfig(SettingsPageRoute.name, path: '/settings-page'),
        _i1.RouteConfig(LegalPageRoute.name, path: '/legal-page'),
        _i1.RouteConfig(ImpressumPageRoute.name, path: '/impressum-page'),
        _i1.RouteConfig(InvitationsPageRoute.name, path: '/invitations-page'),
        _i1.RouteConfig(FriendsPageRoute.name, path: '/friends-page'),
        _i1.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i1.RouteConfig(GameHistoryPageRoute.name,
            path: '/game-history-page',
            children: [
              _i1.RouteConfig(GameHistoryOverviewPageRoute.name, path: ''),
              _i1.RouteConfig(GameHistoryDetailsPageRoute.name,
                  path: 'game-history-details-page')
            ]),
        _i1.RouteConfig(GamePageRoute.name, path: '/game-page', children: [
          _i1.RouteConfig(CreateGamePageRoute.name, path: ''),
          _i1.RouteConfig(InGamePageRoute.name, path: 'in-game-page'),
          _i1.RouteConfig(PostGamePageRoute.name, path: 'post-game-page')
        ])
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class AuthPageRoute extends _i1.PageRouteInfo {
  const AuthPageRoute() : super(name, path: '/auth-page');

  static const String name = 'AuthPageRoute';
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

class SettingsPageRoute extends _i1.PageRouteInfo {
  const SettingsPageRoute() : super(name, path: '/settings-page');

  static const String name = 'SettingsPageRoute';
}

class LegalPageRoute extends _i1.PageRouteInfo {
  const LegalPageRoute() : super(name, path: '/legal-page');

  static const String name = 'LegalPageRoute';
}

class ImpressumPageRoute extends _i1.PageRouteInfo {
  const ImpressumPageRoute() : super(name, path: '/impressum-page');

  static const String name = 'ImpressumPageRoute';
}

class InvitationsPageRoute extends _i1.PageRouteInfo {
  const InvitationsPageRoute() : super(name, path: '/invitations-page');

  static const String name = 'InvitationsPageRoute';
}

class FriendsPageRoute extends _i1.PageRouteInfo {
  const FriendsPageRoute() : super(name, path: '/friends-page');

  static const String name = 'FriendsPageRoute';
}

class ProfilePageRoute extends _i1.PageRouteInfo {
  const ProfilePageRoute() : super(name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

class GameHistoryPageRoute extends _i1.PageRouteInfo {
  const GameHistoryPageRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/game-history-page', initialChildren: children);

  static const String name = 'GameHistoryPageRoute';
}

class GamePageRoute extends _i1.PageRouteInfo {
  const GamePageRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/game-page', initialChildren: children);

  static const String name = 'GamePageRoute';
}

class GameHistoryOverviewPageRoute extends _i1.PageRouteInfo {
  const GameHistoryOverviewPageRoute() : super(name, path: '');

  static const String name = 'GameHistoryOverviewPageRoute';
}

class GameHistoryDetailsPageRoute
    extends _i1.PageRouteInfo<GameHistoryDetailsPageRouteArgs> {
  GameHistoryDetailsPageRoute({_i19.Key? key, required _i20.Game game})
      : super(name,
            path: 'game-history-details-page',
            args: GameHistoryDetailsPageRouteArgs(key: key, game: game));

  static const String name = 'GameHistoryDetailsPageRoute';
}

class GameHistoryDetailsPageRouteArgs {
  const GameHistoryDetailsPageRouteArgs({this.key, required this.game});

  final _i19.Key? key;

  final _i20.Game game;
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

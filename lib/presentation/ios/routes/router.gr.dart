// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i14;
import 'package:flutter/material.dart' as _i2;

import '../../../domain/play/game.dart' as _i15;
import '../core/auth_widget.dart' as _i4;
import '../create_game/create_game_page.dart' as _i12;
import '../friends/friends_page.dart' as _i10;
import '../game_history/game_history_page.dart' as _i7;
import '../game_history_details/game_history_details_page.dart' as _i8;
import '../home/home_page.dart' as _i5;
import '../in_game/in_game_page.dart' as _i13;
import '../invitations/invitations_page.dart' as _i9;
import '../profile/profile_page.dart' as _i6;
import '../settings/settings_page.dart' as _i11;
import '../splash/splash_page.dart' as _i3;

class Router extends _i1.RootStackRouter {
  Router([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    AuthWidgetRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.AuthWidget();
        }),
    HomePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.HomePage();
        }),
    ProfilePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.ProfilePage();
        }),
    GameHistoryPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.GameHistoryPage();
        }),
    GameHistoryDetailsPageRoute.name: (routeData) =>
        _i1.CupertinoPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<GameHistoryDetailsPageRouteArgs>();
              return _i8.GameHistoryDetailsPage(key: args.key, game: args.game);
            }),
    InvitationsPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.InvitationsPage();
        }),
    FriendsPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i10.FriendsPage();
        }),
    SettingsPageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.SettingsPage();
        }),
    CreateGamePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.CreateGamePage();
        }),
    InGamePageRoute.name: (routeData) => _i1.CupertinoPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i13.InGamePage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(AuthWidgetRoute.name, path: '/auth-widget'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i1.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i1.RouteConfig(GameHistoryPageRoute.name, path: '/game-history-page'),
        _i1.RouteConfig(GameHistoryDetailsPageRoute.name,
            path: '/game-history-details-page'),
        _i1.RouteConfig(InvitationsPageRoute.name, path: '/invitations-page'),
        _i1.RouteConfig(FriendsPageRoute.name, path: '/friends-page'),
        _i1.RouteConfig(SettingsPageRoute.name, path: '/settings-page'),
        _i1.RouteConfig(CreateGamePageRoute.name, path: '/create-game-page'),
        _i1.RouteConfig(InGamePageRoute.name, path: '/in-game-page')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class AuthWidgetRoute extends _i1.PageRouteInfo {
  const AuthWidgetRoute() : super(name, path: '/auth-widget');

  static const String name = 'AuthWidgetRoute';
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

class ProfilePageRoute extends _i1.PageRouteInfo {
  const ProfilePageRoute() : super(name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

class GameHistoryPageRoute extends _i1.PageRouteInfo {
  const GameHistoryPageRoute() : super(name, path: '/game-history-page');

  static const String name = 'GameHistoryPageRoute';
}

class GameHistoryDetailsPageRoute
    extends _i1.PageRouteInfo<GameHistoryDetailsPageRouteArgs> {
  GameHistoryDetailsPageRoute({_i14.Key? key, required _i15.Game game})
      : super(name,
            path: '/game-history-details-page',
            args: GameHistoryDetailsPageRouteArgs(key: key, game: game));

  static const String name = 'GameHistoryDetailsPageRoute';
}

class GameHistoryDetailsPageRouteArgs {
  const GameHistoryDetailsPageRouteArgs({this.key, required this.game});

  final _i14.Key? key;

  final _i15.Game game;
}

class InvitationsPageRoute extends _i1.PageRouteInfo {
  const InvitationsPageRoute() : super(name, path: '/invitations-page');

  static const String name = 'InvitationsPageRoute';
}

class FriendsPageRoute extends _i1.PageRouteInfo {
  const FriendsPageRoute() : super(name, path: '/friends-page');

  static const String name = 'FriendsPageRoute';
}

class SettingsPageRoute extends _i1.PageRouteInfo {
  const SettingsPageRoute() : super(name, path: '/settings-page');

  static const String name = 'SettingsPageRoute';
}

class CreateGamePageRoute extends _i1.PageRouteInfo {
  const CreateGamePageRoute() : super(name, path: '/create-game-page');

  static const String name = 'CreateGamePageRoute';
}

class InGamePageRoute extends _i1.PageRouteInfo {
  const InGamePageRoute() : super(name, path: '/in-game-page');

  static const String name = 'InGamePageRoute';
}

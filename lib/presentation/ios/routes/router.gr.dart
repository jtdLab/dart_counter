// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../core/auth_widget.dart' as _i3;
import '../create_game/create_game_page.dart' as _i11;
import '../friends/friends_page.dart' as _i8;
import '../game_history/game_history_page.dart' as _i6;
import '../home/home_page.dart' as _i4;
import '../in_game/in_game_page.dart' as _i12;
import '../invitations/invitations_page.dart' as _i7;
import '../profile/profile_page.dart' as _i5;
import '../settings/settings_page.dart' as _i10;
import '../social_media/social_media_page.dart' as _i9;
import '../splash/splash_page.dart' as _i2;

class Router extends _i1.RootStackRouter {
  Router();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i2.SplashPage());
    },
    AuthWidgetRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i3.AuthWidget());
    },
    HomePageRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i4.HomePage());
    },
    ProfilePageRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i5.ProfilePage());
    },
    GameHistoryPageRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i6.GameHistoryPage());
    },
    InvitationsPageRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i7.InvitationsPage());
    },
    FriendsPageRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i8.FriendsPage());
    },
    SocialMediaPageRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i9.SocialMediaPage());
    },
    SettingsPageRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i10.SettingsPage());
    },
    CreateGamePageRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i11.CreateGamePage());
    },
    InGamePageRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i12.InGamePage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(AuthWidgetRoute.name, path: '/auth-widget'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i1.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i1.RouteConfig(GameHistoryPageRoute.name, path: '/game-history-page'),
        _i1.RouteConfig(InvitationsPageRoute.name, path: '/invitations-page'),
        _i1.RouteConfig(FriendsPageRoute.name, path: '/friends-page'),
        _i1.RouteConfig(SocialMediaPageRoute.name, path: '/social-media-page'),
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

class InvitationsPageRoute extends _i1.PageRouteInfo {
  const InvitationsPageRoute() : super(name, path: '/invitations-page');

  static const String name = 'InvitationsPageRoute';
}

class FriendsPageRoute extends _i1.PageRouteInfo {
  const FriendsPageRoute() : super(name, path: '/friends-page');

  static const String name = 'FriendsPageRoute';
}

class SocialMediaPageRoute extends _i1.PageRouteInfo {
  const SocialMediaPageRoute() : super(name, path: '/social-media-page');

  static const String name = 'SocialMediaPageRoute';
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

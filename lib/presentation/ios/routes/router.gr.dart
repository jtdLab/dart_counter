// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../core/auth_widget.dart' as _i2;
import '../home/home_page.dart' as _i3;

class Router extends _i1.RootStackRouter {
  Router();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    AuthWidgetRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i2.AuthWidget());
    },
    HomePageRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i3.HomePage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(AuthWidgetRoute.name, path: '/'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home-page')
      ];
}

class AuthWidgetRoute extends _i1.PageRouteInfo {
  const AuthWidgetRoute() : super(name, path: '/');

  static const String name = 'AuthWidgetRoute';
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$_Router extends RootStackRouter {
  _$_Router([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    UnauthenticatedFlowRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const UnauthenticatedFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    AuthenticatedFlowRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const AuthenticatedFlow(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(UnauthenticatedFlowRoute.name,
            path: '/unauthenticated-flow'),
        RouteConfig(AuthenticatedFlowRoute.name, path: '/authenticated-flow')
      ];
}

/// generated route for
/// [UnauthenticatedFlow]
class UnauthenticatedFlowRoute extends PageRouteInfo<void> {
  const UnauthenticatedFlowRoute()
      : super(UnauthenticatedFlowRoute.name, path: '/unauthenticated-flow');

  static const String name = 'UnauthenticatedFlowRoute';
}

/// generated route for
/// [AuthenticatedFlow]
class AuthenticatedFlowRoute extends PageRouteInfo<void> {
  const AuthenticatedFlowRoute()
      : super(AuthenticatedFlowRoute.name, path: '/authenticated-flow');

  static const String name = 'AuthenticatedFlowRoute';
}

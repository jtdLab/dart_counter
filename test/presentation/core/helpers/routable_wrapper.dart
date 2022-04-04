import 'package:auto_route/src/matcher/route_matcher.dart';
import 'package:dart_counter/presentation/core/core.dart';
import 'package:flutter/widgets.dart';

import 'helpers.dart';

class MockRouteData extends Mock implements RouteData {}

// TODO use this logic for widget MockRouterProvider

/// Wraps [widget] with a dummy route so build doesnt fail.
///
/// The [router] must be a mock and can be used to verify navigation calls.
///
/// This should only be used to test pages.
Widget routableWrapper(
  Widget widget,
  PlatformRouter router, [
  AutoRouteObserver? observer,
]) {
  assert(router is Mock);

  const name = 'mocked-route-name';
  final collection = RouteCollection.from([
    RouteConfig(
      name,
      path: 'mocked-route-path',
      children: [
        RouteConfig('mocked-sub-route-name', path: 'mocked-sub-route-path')
      ],
    )
  ]);

  when(() => router.key).thenReturn(const ValueKey(0));
  when(() => router.matcher).thenReturn(RouteMatcher(collection));
  when(() => router.routeCollection).thenReturn(collection);
  when(() => router.pageBuilder).thenReturn(
    (routeData) => CustomPage(routeData: routeData, child: Container()),
  );

  final routeData = MockRouteData();
  when(() => routeData.key).thenReturn(const ValueKey(0));
  when(() => routeData.name).thenReturn(name);
  when(() => routeData.hasPendingChildren).thenReturn(false);
  when(() => routeData.pendingChildren).thenReturn([]);

  const stateHash = 0;

  return RouteDataScope(
    routeData: routeData,
    child: RouterScope(
      controller: router,
      navigatorObservers: observer != null ? [observer] : [],
      inheritableObserversBuilder: () => [],
      stateHash: stateHash,
      child: StackRouterScope(
        controller: router,
        stateHash: stateHash,
        child: widget,
      ),
    ),
  );
}

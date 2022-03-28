import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/presentation/core/platform.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:mocktail/mocktail.dart';

class MockPlatform extends Mock implements Platform {}

class MockDefaultRouteParser extends Fake implements DefaultRouteParser {
  @override
  Future<UrlState> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '');

    return SynchronousFuture<UrlState>(UrlState(uri, const []));
  }

  @override
  RouteInformation restoreRouteInformation(UrlState urlState) {
    return AutoRouteInformation(
      location: urlState.url.isEmpty ? '/' : urlState.url,
      replace: urlState.shouldReplace,
    );
  }
}

class MockAutoRouterDelegate extends Mock implements AutoRouterDelegate {
  @override
  Widget build(BuildContext context) => Container();

  @override
  Future<void> setInitialRoutePath(UrlState state) async {}

  @override
  Future<void> setNewRoutePath(UrlState state) async {}
}

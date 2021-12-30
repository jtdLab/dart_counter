import 'package:dart_counter/presentation/ios/core/core.dart';

class DartCounterRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    print('New route pushed: ${route.settings.name}');
  }
}

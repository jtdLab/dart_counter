import 'package:dart_counter/logger.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

class DartCounterRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    logger.d('New route pushed: ${route.settings.name}');
  }
}

//import 'package:dart_counter/core/logger.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:logging/logging.dart';

class AppRouteObserver extends AutoRouterObserver {
  final log = Logger('AppRouteObserver');

  @override
  void didPush(Route route, Route? previousRoute) {
    log.info('didPush ${route.settings.name}');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    log.info(
      'didReplace ${oldRoute?.settings.name} with ${newRoute?.settings.name}',
    );
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    log.info('didPop ${route.settings.name}');
  }
}

import 'package:dart_counter/presentation/ios/core/core.dart';

// TODO maybe move router.dart
// and this to location:  presentation/
// because this gets shared in ios and android
// in this case the naming makes sence

class DartCounterRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    print('New route pushed: ${route.settings.name}');
  }
}

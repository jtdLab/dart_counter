import 'package:dart_counter/presentation/ios/core/core.dart';

class MockRouterProvider extends StatelessWidget {
  final Router router;
  final Widget child;

  const MockRouterProvider({
    Key? key,
    required this.router,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const stateHash = 88888;

    return RouteDataScope(
      routeData: router.routeData,
      child: RouterScope(
        controller: router,
        inheritableObserversBuilder: () => [],
        navigatorObservers: const [],
        stateHash: stateHash,
        child: StackRouterScope(
          controller: router,
          stateHash: stateHash,
          child: child,
        ),
      ),
    );
  }
}

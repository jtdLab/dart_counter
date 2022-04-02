import 'package:dart_counter/presentation/ios/core/core.dart';

// TODO remove or get inspired by routable wrapper
class MockRouterProviderx extends StatelessWidget {
  final Router router;
  final Widget child;

  const MockRouterProviderx({
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

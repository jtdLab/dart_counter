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
    return StackRouterScope(
      controller: router,
      stateHash: 8888,
      child: child,
    );
  }
}

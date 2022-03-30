// CORE

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/auth/sign_in/sign_in_page.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/auth/sign_up/sign_up_page.dart';

// TODO rename to flow or all to flows to wrapper? some log navigation events of page view
class AuthWrapper extends HookWidget {
  const AuthWrapper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouteObserver =
        RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();

    final pageController = usePageController();

    return ListenableProvider.value(
      value: pageController,
      child: PageView(
        controller: pageController,
        children: const [
          SignInPage(),
          SignUpPage(),
        ],
        onPageChanged: (index) => _onPageChanged(
          context,
          index,
          appRouteObserver,
        ),
      ),
    );
  }

  void _onPageChanged(
    BuildContext context,
    int newIndex,
    AutoRouteObserver? observer,
  ) {
    final Route oldRoute;
    final Route newRoute;
    if (newIndex == 0) {
      oldRoute = CupertinoPageRoute(
        builder: (context) => Container(),
        settings: const RouteSettings(name: 'SignUpPageRoute'),
      );
      newRoute = CupertinoPageRoute(
        builder: (context) => Container(),
        settings: const RouteSettings(name: 'SignInPageRoute'),
      );
    } else {
      oldRoute = CupertinoPageRoute(
        builder: (context) => Container(),
        settings: const RouteSettings(name: 'SignInPageRoute'),
      );
      newRoute = CupertinoPageRoute(
        builder: (context) => Container(),
        settings: const RouteSettings(name: 'SignUpPageRoute'),
      );
    }

    observer?.didReplace(oldRoute: oldRoute, newRoute: newRoute);
  }
}

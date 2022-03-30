// CORE

import 'package:dart_counter/presentation/core/page_view_page_route.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/auth/sign_in/sign_in_page.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/auth/sign_up/sign_up_page.dart';

// TODO rename to flow or all to flows to wrapper? some log navigation events of page view
class AuthWrapper extends StatefulWidget {
  const AuthWrapper({
    Key? key,
  }) : super(key: key);

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  late final PageController pageController;
  late final AutoRouteObserver? observer;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    observer = RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();
    observer?.didPush(PageViewRoute<SignInPage>(), null);
  }

  @override
  Widget build(BuildContext context) {
    return ListenableProvider.value(
      value: pageController,
      child: PageView(
        controller: pageController,
        children: const [
          SignInPage(),
          SignUpPage(),
        ],
        onPageChanged: (index) => _onPageChanged(context, index),
      ),
    );
  }

  void _onPageChanged(
    BuildContext context,
    int newIndex,
  ) {
    if (newIndex == 0) {
      observer?.didReplace(
        oldRoute: PageViewRoute<SignUpPage>(),
        newRoute: PageViewRoute<SignInPage>(),
      );
    } else {
      observer?.didReplace(
        oldRoute: PageViewRoute<SignInPage>(),
        newRoute: PageViewRoute<SignUpPage>(),
      );
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

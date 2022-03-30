// CORE
import 'package:dart_counter/presentation/core/auto_route_page_view.dart';
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
    context.router;
    return const AutoRoutePageView();

    /**
     * final appRouteObserver =
        RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();
     */

    /**
     * 
    final pageController = usePageController();
  

    return ListenableProvider.value(
      value: pageController,
      child: PageView(
        controller: pageController,
        children: const [
          SignInPage(),
          SignUpPage(),
        ],
        onPageChanged: (index) {
          if (index == 0) {
            context.router.replace(const SignInPageRoute());
          } else {
            context.router.replace(const SignUpPageRoute());
          }

          /**
          *  final oldRoute;
          final newRoute;
          if (index == 0) {
            oldRoute = const SignUpPageRoute();
            newRoute = const SignInPageRoute();
          } else {
            oldRoute = const SignInPageRoute();
            newRoute = const SignUpPageRoute();
          }

          appRouteObserver?.didReplace(
            oldRoute: 
            newRoute: null,
          );
          */
        },
      ),
    );
  
     */
  }
}

// CORE
import 'package:dart_counter/presentation/core/page_view_page_route.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/auth/sign_in/sign_in_page.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/auth/sign_up/sign_up_page.dart';

class AuthFlow extends StatefulWidget {
  // Keys for widget-testing
  static const Key pageViewKey = Key('page_view');

  const AuthFlow({Key? key}) : super(key: key);

  @override
  State<AuthFlow> createState() => _AuthFlowState();
}

class _AuthFlowState extends State<AuthFlow> {
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
        key: AuthFlow.pageViewKey,
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

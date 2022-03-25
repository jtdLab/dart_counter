// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/auth/sign_in/sign_in_page.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/auth/sign_up/sign_up_page.dart';

class AuthWrapper extends HookWidget {
  const AuthWrapper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController = usePageController();

    return ListenableProvider.value(
      value: pageController,
      child: PageView(
        controller: pageController,
        children: const [
          SignInPage(),
          SignUpPage(),
        ],
      ),
    );
  }
}

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'sign_in/sign_in_page.dart';
import 'sign_up/sign_up_page.dart';

class AuthFlow extends HookWidget {
  const AuthFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController = usePageController();

    return CupertinoPageScaffold(
      child: PageView(
        controller: pageController,
        children: [
          SignInPage(pageController: pageController),
          SignUpPage(pageController: pageController),
        ],
      ),
    );
  }
}

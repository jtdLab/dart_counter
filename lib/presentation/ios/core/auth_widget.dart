import 'package:dart_counter/presentation/ios/sign_in/sign_in_page.dart';
import 'package:dart_counter/presentation/ios/sign_up/sign_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AuthWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = usePageController();

    return PageView(
      controller: pageController,
      children: [
        SignInPage(pageController: pageController),
        SignUpPage(pageController: pageController),
      ],
    );
  }
}

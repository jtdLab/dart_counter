import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'sign_in/sign_in_page.dart';
import 'sign_up/sign_up_page.dart';

class AuthPage extends HookWidget {
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

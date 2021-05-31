import 'package:dart_counter/presentation/ios/core/app_navigation_bar.dart';
import 'package:flutter/cupertino.dart';

class AppPage extends StatelessWidget {
  final AppNavigationBar? navigationBar;
  final Widget child;

  const AppPage({Key? key, this.navigationBar, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
          child: Column(
            children: [
              navigationBar ?? Container(),
              Expanded(
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:flutter/material.dart';

/// A page for the ios app.
///
/// Providing layout and other utility that every page might have.
class AppPage extends StatelessWidget {
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final AppNavigationBar? navigationBar;
  final Widget child;

  const AppPage({
    Key? key,
    this.onTap,
    this.backgroundColor,
    this.navigationBar,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CupertinoPageScaffold(
        backgroundColor: backgroundColor,
        child: SafeArea(
          child: Padding(
            padding: _padding(context),
            child: Column(
              children: [
                if (navigationBar != null) ...[
                  navigationBar ?? Container(),
                  SizedBox(
                    height: size12(context),
                  ),
                ],
                Expanded(
                  child: child,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // TODO
  EdgeInsets _padding(BuildContext context) => responsiveValue(
        context,
        defaultValue: const EdgeInsets.fromLTRB(40, 0, 40, 5),
        mobileSmall: const EdgeInsets.fromLTRB(30, 0, 30, 5),
      );
}

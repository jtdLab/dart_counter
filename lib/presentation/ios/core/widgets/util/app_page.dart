import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/app_navigation_bar.dart';

class AppPage extends StatelessWidget {
  final VoidCallback? onTap;

  final Color? backgroundColor;
  final EdgeInsets padding;

  final AppNavigationBar? navigationBar;
  final Widget child;

  const AppPage({
    Key? key,
    this.navigationBar,
    required this.child,
    this.onTap,
    this.backgroundColor,
    this.padding = const EdgeInsets.fromLTRB(40, 20, 40, 5), // TODO responsive
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CupertinoPageScaffold(
        backgroundColor: backgroundColor,
        child: SafeArea(
          child: Padding(
            padding: padding,
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
      ),
    );
  }
}

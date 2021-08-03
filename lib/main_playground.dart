import 'package:dart_counter/infrastructure/play/game_snapshot_dto.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

void main() {
  /**
   * runApp(
    const MyApp(),
  );
   */
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: AppPage(
        child: Column(
          children: [
            for (int i = 0; i < 5; i++) ...[
              Container(
                color: AppColors.red,
                height: 100,
              ),
              Container(
                color: AppColors.green,
                height: 100,
              ),
            ]
          ],
        ),
      ),
    );
  }
}

/**
 * import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/app_navigation_bar.dart';

class AppPage extends StatelessWidget {
  final VoidCallback? onTap;
  final double? maxHeight;
  final AppNavigationBar? navigationBar;
  final Widget child;

  const AppPage({
    Key? key,
    this.maxHeight,
    this.navigationBar,
    required this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CupertinoPageScaffold(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
            child: Column(
              children: [
                navigationBar ?? Container(),
                const AppSpacer.large(),
                Expanded(
                  child: SingleChildScrollView(
                    child: IntrinsicHeight(
                      child: child,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

 */

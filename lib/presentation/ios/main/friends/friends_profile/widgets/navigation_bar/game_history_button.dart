import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/widgets/app_navigation_bar_button.dart';

class GameHistoryButton extends StatelessWidget {
  const GameHistoryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      onPressed: () => context.router.push(const GameHistoryFlowRoute()),
      child: Image.asset(
        AppImages.clockNew,
      ),
    );
  }
}

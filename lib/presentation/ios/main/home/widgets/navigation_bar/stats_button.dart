import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/widgets/app_navigation_bar_button.dart';

class StatsButton extends StatelessWidget {
  const StatsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      onPressed: () => context.router.push(const ProfilePageRoute()),
      child: Image.asset(
        AppImages.stats_new,
      ),
    );
  }
}

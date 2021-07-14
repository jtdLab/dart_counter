import 'package:dart_counter/presentation/ios/core/core.dart';

import 'app_navigation_bar/widgets/app_navigation_bar_button.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      onPressed: () => context.router.pop(),
      child: Image.asset(
        AppImages.chevron_back_new,
      ),
    );
  }
}

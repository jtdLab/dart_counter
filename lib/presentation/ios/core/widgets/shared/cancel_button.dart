import 'package:dart_counter/presentation/ios/core/core.dart';
import 'app_navigation_bar/widgets/app_navigation_bar_button.dart';

class CancelButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CancelButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      onPressed: onPressed,
      child: Image.asset(
        AppImages.xMarkBlackNew,
      ),
    );
  }
}

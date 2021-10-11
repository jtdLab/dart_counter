// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

class CancelButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CancelButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      noPaddingLeft: true,
      onPressed: onPressed,
      child: Image.asset(
        AppImages.xMarkBlackNew,
      ),
    );
  }
}

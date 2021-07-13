import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class DetailedKeyBoardButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double fontSize;
  final String? text;
  final Widget? child;

// TODO assert text or child supplied
  const DetailedKeyBoardButton({
    this.onPressed,
    Key? key,
    this.fontSize = 20,
    this.text,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (text != null) {
      return AppActionButton.normal(
        fontSize: fontSize,
        color: AppColors.white,
        onPressed: onPressed,
        text: text,
      );
    }
    if (child != null) {
      return AppActionButton.normal(
        color: AppColors.white,
        onPressed: onPressed,
        icon: child,
      );
    }
    return Container(); // TODO remove after assert
  }
}

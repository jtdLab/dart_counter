import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class KeyBoardButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double fontSize;
  final String? text;
  final Widget? child;

  const KeyBoardButton({
    Key? key,
    this.onPressed,
    this.fontSize = 28,
    this.text,
    this.child,
  })  : assert(text != null || child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (text != null) {
      return AppActionButton.flexible(
        fontSize: fontSize,
        color: AppColors.white,
        onPressed: onPressed,
        text: text,
      );
    }
    if (child != null) {
      return AppActionButton.flexible(
        color: AppColors.white,
        onPressed: onPressed,
        icon: child,
      );
    }
    throw AssertionError('Need to provide child or text');
  }
}

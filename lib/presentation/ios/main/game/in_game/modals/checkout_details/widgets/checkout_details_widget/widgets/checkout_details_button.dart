import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

// TODO refactor
class CheckoutDetailsButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double fontSize;
  final String? text;
  final Widget? child;
  final bool selected;

// TODO assert text or child supplied
  const CheckoutDetailsButton({
    this.onPressed,
    Key? key,
    this.fontSize = 28,
    this.text,
    required this.selected,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (text != null) {
      return AppActionButton.normal(
        fontSize: fontSize,
        color: selected ? AppColors.orangeNew : AppColors.white,
        onPressed: onPressed,
        text: text,
      );
    }
    if (child != null) {
      return AppActionButton.normal(
        color: selected ? AppColors.orangeNew : AppColors.white,
        onPressed: onPressed,
        icon: child,
      );
    }
    return Container(); // TODO remove after assert
  }
}

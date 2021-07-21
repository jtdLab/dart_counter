import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class DetailedKeyBoardButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double fontSize;
  final Color color;
  final String text;

  const DetailedKeyBoardButton({
    Key? key,
    this.onPressed,
    this.fontSize = 28,
    this.color = AppColors.black,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.normal(
      fontSize: fontSize,
      color: AppColors.white,
      onPressed: onPressed,
      text: text,
      fontColor: color,
      borderColor: color,
    );
  }
}

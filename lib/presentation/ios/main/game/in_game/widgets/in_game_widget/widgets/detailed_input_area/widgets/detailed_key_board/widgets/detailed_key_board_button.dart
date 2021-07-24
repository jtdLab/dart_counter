import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';
import 'package:dartz/dartz.dart';

class DetailedKeyBoardButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double fontSize;
  final Color color;
  final Either<String, Widget> textOrIcon;

  const DetailedKeyBoardButton({
    Key? key,
    this.onPressed,
    this.fontSize = 28,
    this.color = AppColors.black,
    required this.textOrIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return textOrIcon.fold(
      (text) => AppActionButton.normal(
        fontSize: fontSize,
        color: AppColors.white,
        onPressed: onPressed,
        text: text,
        fontColor: color,
        borderColor: color,
      ),
      (icon) => AppActionButton.normal(
        fontSize: fontSize,
        color: AppColors.white,
        onPressed: onPressed,
        icon: icon,
        fontColor: color,
        borderColor: color,
      ),
    );
  }
}

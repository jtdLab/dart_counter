import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_action_button.dart';
import 'package:flutter/cupertino.dart';

class KeyBoardButton extends StatelessWidget {
  final double fontSize;
  final String? text;
  final Widget? child;

// TODO assert text or child supplied
  const KeyBoardButton({
    Key? key,
    this.fontSize = 28,
    this.text,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (text != null) {
      return AppActionButton.normal(
        fontSize: fontSize,
        color: AppColors.white,
        onPressed: () {},
        text: text,
      );
    }
    if (child != null) {
      return AppActionButton.normal(
        color: AppColors.white,
        onPressed: () {},
        icon: child,
      );
    }
    return Container(); // TODO remove after assert
  }
}

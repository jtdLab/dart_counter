import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class AppPrimaryButton extends StatelessWidget {
  final String text;
  final BorderRadius borderRadius;
  final VoidCallback? onPressed;
  final Color color;

  const AppPrimaryButton({
    required this.text,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(0),
    ),
    this.onPressed,
    this.color = AppColors.black,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size55(context),
      child: CupertinoButton(
        color: color,
        padding: const EdgeInsets.all(8.0),
        onPressed: onPressed,
        borderRadius: borderRadius,
        child: Center(
          child: AutoSizeText(
            text.toUpperCase(),
            maxLines: 1,
            maxFontSize: 14,
          ),
        ),
      ),
    );
  }
}

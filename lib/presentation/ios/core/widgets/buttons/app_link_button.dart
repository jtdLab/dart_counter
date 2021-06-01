import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';

class AppLinkButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const AppLinkButton({required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: AutoSizeText(
        text.toUpperCase(),
        maxFontSize: 12,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.red),
      ),
    );
  }
}

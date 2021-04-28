import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';

class LinkButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const LinkButton({required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: AutoSizeText(
        text,
        maxLines: 1,
        style: const TextStyle(color: AppColors.blue),
      ),
    );
  }
}

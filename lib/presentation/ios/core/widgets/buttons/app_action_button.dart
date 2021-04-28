import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  ActionButton({
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.all(16),
      onPressed: onPressed,
      child: Center(
        child: AutoSizeText(
          text,
          maxLines: 1,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 37),
        ),
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(16),
      ),
      color: AppColors.green,
    );
  }
}

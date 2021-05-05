import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const ActionButton({
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveDouble(
        context: context,
        mobile: ResponsiveDouble(normal: 60, large: 75, extraLarge: 90),
      ), //
      child: CupertinoButton(
        padding: const EdgeInsets.all(16),
        onPressed: onPressed,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        color: AppColors.green,
        child: Center(
          child: AutoSizeText(
            text,
            maxLines: 1,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 37),
          ),
        ),
      ),
    );
  }
}

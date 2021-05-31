import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class AppPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color color;

  const AppPrimaryButton({
    required this.text,
    this.onPressed,
    this.color = AppColors.black
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveDouble(
        context: context,
        mobile: const ResponsiveDouble(small: 50, normal: 55, large: 60, extraLarge: 70),
      ), //
      child: CupertinoButton(
        color: color,
        padding: const EdgeInsets.all(8.0),
        onPressed: onPressed,
        borderRadius: const BorderRadius.all(
          Radius.circular(0),
        ),
        child: Center(
          child: AutoSizeText(
            text.toUpperCase(),
            maxLines: 1,
            maxFontSize: 14,
            style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
          ),
        ),
      ),
    );
  }
}

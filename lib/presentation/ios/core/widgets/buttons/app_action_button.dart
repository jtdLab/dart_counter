import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class AppActionButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const AppActionButton.small({
    required this.text,
    this.onPressed,
  });

  const AppActionButton.large({
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveDouble(
        context: context,
        mobile: const ResponsiveDouble(
          small: 50,
          normal: 60,
          large: 75,
          extraLarge: 90,
        ),
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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const PrimaryButton({
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveDouble(
        context: context,
        mobile: ResponsiveDouble(normal: 50, large: 50, extraLarge: 60),
      ), //
      child: CupertinoButton(
        color: AppColors.black,
        padding: const EdgeInsets.all(8.0),
        onPressed: onPressed,
        borderRadius: BorderRadius.all(
          Radius.circular(responsiveDouble(
            context: context,
            mobile: ResponsiveDouble(normal: 8, large: 12, extraLarge: 16),
          )),
        ),
        child: Center(
          child: AutoSizeText(
            text,
            maxLines: 1,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
        ),
      ),
    );
  }
}

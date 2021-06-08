import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class ErrorDisplayer extends StatelessWidget {
  final String message;

  const ErrorDisplayer({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size12(context),
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: AutoSizeText(
            message,
            maxLines: 1,
            maxFontSize: AppFontSizes.mini,
            minFontSize: 1,
            style: const TextStyle(color: AppColors.red),
          ),
        ),
      ),
    );
  }
}

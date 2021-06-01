import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/layout/app_spacer.dart';
import 'package:flutter/cupertino.dart' hide Orientation;
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

enum AppActionButtonSize { small, large }

class AppActionButton extends StatelessWidget {
  final AppActionButtonSize size;

  final Color color;
  final Color fontColor;
  final BorderRadius borderRadius;
  final Widget? icon;
  final String text;
  final VoidCallback? onPressed;

  const AppActionButton.small({
    this.color = AppColors.yellow,
    this.fontColor = AppColors.black,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(0),
    ),
    this.icon,
    required this.text,
    this.onPressed,
  }) : size = AppActionButtonSize.small;

  const AppActionButton.large({
    this.color = AppColors.red,
    this.fontColor = AppColors.white,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(0),
    ),
    this.icon,
    required this.text,
    this.onPressed,
  }) : size = AppActionButtonSize.large;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          size == AppActionButtonSize.small ? size40(context) : size70(context),
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        minSize: 1,
        onPressed: onPressed,
        borderRadius: borderRadius,
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              SizedBox(
                width: 30,
                height: 30,
                child: icon,
              )
            else
              Container(),
            const AppSpacer.normal(
              orientation: Orientation.horizontal,
            ),
            AutoSizeText(
              text,
              maxLines: 1,
              style: TextStyle(
                color: fontColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

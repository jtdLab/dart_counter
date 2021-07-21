import 'package:dart_counter/presentation/ios/core/core.dart';

enum AppActionButtonSize { small, normal, large }

// TODO assert text or icon provided
class AppActionButton extends StatelessWidget {
  final AppActionButtonSize size;

  final Color color;
  final Color fontColor;
  final double? fontSize;
  final BorderRadius borderRadius;
  final Color borderColor;
  final Widget? icon;
  final String? text;
  final VoidCallback? onPressed;

  const AppActionButton.small({
    this.color = AppColors.orangeNew,
    this.fontColor = AppColors.black,
    this.fontSize,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(0),
    ),
    this.borderColor = AppColors.black,
    this.icon,
    this.text,
    this.onPressed,
  }) : size = AppActionButtonSize.small;

  const AppActionButton.normal({
    this.color = AppColors.orangeNew,
    this.fontColor = AppColors.black,
    this.fontSize,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(0),
    ),
    this.borderColor = AppColors.black,
    this.icon,
    this.text,
    this.onPressed,
  }) : size = AppActionButtonSize.normal;

  const AppActionButton.large({
    this.color = AppColors.red,
    this.fontColor = AppColors.white,
    this.fontSize,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(0),
    ),
    this.borderColor = AppColors.black,
    this.icon,
    this.text,
    this.onPressed,
  }) : size = AppActionButtonSize.large;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      minSize: 1,
      onPressed: onPressed,
      disabledColor: AppColors.white,
      borderRadius: borderRadius,
      color: color,
      child: Container(
        height: size == AppActionButtonSize.small
            ? size40(context)
            : size == AppActionButtonSize.normal
                ? size55(context)
                : size70(context),
        decoration: BoxDecoration(
          border: Border.all(
            width: border4(context),
            color: onPressed == null
                ? CupertinoColors.quaternarySystemFill
                : borderColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              SizedBox(
                width: 30,
                height: 30,
                child: icon,
              ),
            if (icon != null && text != null)
              const AppSpacer.normal(
                orientation: Orientation.horizontal,
              ),
            if (text != null)
              AutoSizeText(
                text!,
                maxLines: 1,
                style: TextStyle(
                  fontSize: fontSize,
                  color: onPressed == null
                      ? CupertinoColors.quaternarySystemFill
                      : fontColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

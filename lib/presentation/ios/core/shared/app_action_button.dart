// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

enum AppActionButtonSize { small, normal, large, flexible }

// TODO implement better
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
    this.borderRadius = BorderRadius.zero,
    this.borderColor = AppColors.black,
    this.icon,
    this.text,
    this.onPressed,
  })  : size = AppActionButtonSize.small,
        assert(text != null || icon != null);

  const AppActionButton.normal({
    this.color = AppColors.orangeNew,
    this.fontColor = AppColors.black,
    this.fontSize,
    this.borderRadius = BorderRadius.zero,
    this.borderColor = AppColors.black,
    this.icon,
    this.text,
    this.onPressed,
  })  : size = AppActionButtonSize.normal,
        assert(text != null || icon != null);

  const AppActionButton.large({
    this.color = AppColors.red,
    this.fontColor = AppColors.white,
    this.fontSize,
    this.borderRadius = BorderRadius.zero,
    this.borderColor = AppColors.black,
    this.icon,
    this.text,
    this.onPressed,
  })  : size = AppActionButtonSize.large,
        assert(text != null || icon != null);

  const AppActionButton.flexible({
    this.color = AppColors.red,
    this.fontColor = AppColors.black,
    this.fontSize,
    this.borderRadius = BorderRadius.zero,
    this.borderColor = AppColors.black,
    this.icon,
    this.text,
    this.onPressed,
  })  : size = AppActionButtonSize.flexible,
        assert(text != null || icon != null);

  @override
  Widget build(BuildContext context) {
    final button = CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      disabledColor: AppColors.white,
      borderRadius: borderRadius,
      color: color,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: border4(context),
            color: onPressed == null
                ? CupertinoColors.quaternarySystemFill
                : borderColor,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                SizedBox(
                  width: size30(context),
                  height: size30(context),
                  child: icon,
                ),
              if (icon != null && text != null)
                SizedBox(
                  width: spacerNormal(context),
                ),
              if (text != null)
                AutoSizeText(
                  text!,
                  maxLines: 1,
                  minFontSize: 8,
                  maxFontSize: maxFontSizeNormal(context),
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
      ),
    );

    if (size == AppActionButtonSize.flexible) {
      return Expanded(child: button);
    } else {
      return SizedBox(
        height: size == AppActionButtonSize.small
            ? size40(context)
            : size == AppActionButtonSize.normal
                ? size55(context)
                : size70(context),
        child: button,
      );
    }
  }
}

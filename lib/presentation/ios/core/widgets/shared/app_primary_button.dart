import 'package:dart_counter/presentation/ios/core/core.dart';

class AppPrimaryButton extends StatelessWidget {
  final String text;
  final BorderRadius borderRadius;
  final VoidCallback? onPressed;
  final Color fontColor;
  final Color color;

  const AppPrimaryButton({
    required this.text,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(0),
    ),
    this.fontColor = AppColors.white,
    this.onPressed,
    this.color = AppColors.black,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size55(context),
      child: CupertinoButton(
        color: color,
        padding: const EdgeInsets.all(8.0),
        onPressed: onPressed,
        borderRadius: borderRadius,
        child: Center(
          child: AutoSizeText(
            text.toUpperCase(),
            maxLines: 1,
            maxFontSize: 14,
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  color: fontColor,
                ),
          ),
        ),
      ),
    );
  }
}

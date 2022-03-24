// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

class AppPrimaryButton extends StatelessWidget {
  final String text;
  final bool isSubmitting;
  final BorderRadius borderRadius;
  final VoidCallback? onPressed;
  final Color fontColor;
  final Color color;

  const AppPrimaryButton({
    Key? key,
    required this.text,
    this.isSubmitting = false,
    this.borderRadius = BorderRadius.zero,
    this.fontColor = AppColors.white,
    this.onPressed,
    this.color = AppColors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !isSubmitting,
      replacement: SizedBox(
        width: double.infinity,
        height: size55(context),
        child: Container(
          color: AppColors.black,
          child: Padding(
            padding: const EdgeInsets.all(12.0), // TODO
            child: Lottie.asset(
              AppAnimations.loadingCircleWhite,
              width: size12(context),
              height: size12(context),
            ),
          ),
        ),
      ),
      child: SizedBox(
        height: size55(context),
        child: CupertinoButton(
          color: color,
          padding: const EdgeInsets.all(8.0), // TODO
          onPressed: onPressed,
          borderRadius: borderRadius,
          child: Center(
            child: AutoSizeText(
              text.toUpperCase(),
              maxLines: 1,
              minFontSize: 8,
              maxFontSize: maxFontSizeNormal(context),
              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                    color: fontColor,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

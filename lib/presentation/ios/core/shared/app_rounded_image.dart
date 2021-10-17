// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

enum AppRoundedImageSize {
  small,
  normal,
  large,
  extraLarge,
}

class AppRoundedImage extends StatelessWidget {
  final AppRoundedImageSize size;
  final String? imageName;
  final Border? border;
  final ImageProvider? child;

  const AppRoundedImage.small({
    this.imageName,
    this.border,
    this.child,
  }) : size = AppRoundedImageSize.small;
  const AppRoundedImage.normal({
    this.imageName,
    this.border,
    this.child,
  }) : size = AppRoundedImageSize.normal;
  const AppRoundedImage.large({
    this.imageName,
    this.border,
    this.child,
  }) : size = AppRoundedImageSize.large;
  const AppRoundedImage.extraLarge({
    this.imageName,
    this.border,
    this.child,
  }) : size = AppRoundedImageSize.extraLarge;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size == AppRoundedImageSize.small
          ? size30(context)
          : size == AppRoundedImageSize.normal
              ? size45(context)
              : size == AppRoundedImageSize.large
                  ? size70(context)
                  : size150(context),
      height: size == AppRoundedImageSize.small
          ? size30(context)
          : size == AppRoundedImageSize.normal
              ? size45(context)
              : size == AppRoundedImageSize.large
                  ? size70(context)
                  : size150(context),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: border,
        image: DecorationImage(
          image: child ??
              AssetImage(
                imageName!,
              ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

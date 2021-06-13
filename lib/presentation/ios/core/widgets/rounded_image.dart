import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

enum RoundedImageSize {
  small,
  normal,
  large,
  extraLarge,
}

// TODO assert imageName or child != null
class RoundedImage extends StatelessWidget {
  final RoundedImageSize size;
  final String? imageName;
  final Border? border;
  final ImageProvider? child;

  const RoundedImage.small({
    this.imageName,
    this.border,
    this.child,
  }) : size = RoundedImageSize.small;
  const RoundedImage.normal({
    this.imageName,
    this.border,
    this.child,
  }) : size = RoundedImageSize.normal;
  const RoundedImage.large({
    this.imageName,
    this.border,
    this.child,
  }) : size = RoundedImageSize.large;
  const RoundedImage.extraLarge({
    this.imageName,
    this.border,
    this.child,
  }) : size = RoundedImageSize.extraLarge;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size == RoundedImageSize.small
          ? size30(context)
          : size == RoundedImageSize.normal
              ? size45(context)
              : size == RoundedImageSize.large
                  ? size70(context)
                  : size150(context),
      height: size == RoundedImageSize.small
          ? size30(context)
          : size == RoundedImageSize.normal
              ? size45(context)
              : size == RoundedImageSize.large
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
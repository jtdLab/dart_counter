import 'package:cached_network_image/cached_network_image.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/rounded_image.dart';
import 'package:flutter/cupertino.dart';

class ImageDisplayer extends StatelessWidget {
  final String? photoUrl;

  const ImageDisplayer({
    Key? key,
    this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (photoUrl != null) {
      return RoundedImage.extraLarge(
        child: CachedNetworkImageProvider(
          photoUrl!,
        ),
      );
    } else {
      return const RoundedImage.extraLarge(
        imageName: AppImages.photo_placeholder_new,
      );
    }
  }
}

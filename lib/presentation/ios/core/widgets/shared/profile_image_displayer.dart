import 'package:cached_network_image/cached_network_image.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'app_rounded_image.dart';

class ProfileImageDisplayer extends StatelessWidget {
  final String? photoUrl;

  const ProfileImageDisplayer({
    Key? key,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (photoUrl != null) {
      return AppRoundedImage.extraLarge(
        child: CachedNetworkImageProvider(
          photoUrl!,
        ),
      );
    } else {
      return const AppRoundedImage.extraLarge(
        imageName: AppImages.photo_placeholder_new,
      );
    }
  }
}

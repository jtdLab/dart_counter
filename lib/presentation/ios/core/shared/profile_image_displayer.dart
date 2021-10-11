// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// Closer scope
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
        imageName: AppImages.photoPlaceholderNew,
      );
    }
  }
}

import 'package:cached_network_image/cached_network_image.dart';

import 'package:dart_counter/application/core/user/user_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'app_rounded_image.dart';

class ProfileImageDisplayer extends StatelessWidget {
  const ProfileImageDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (success) {
            final photoUrl = success.user.profile.photoUrl;
            if (photoUrl != null) {
              return AppRoundedImage.extraLarge(
                child: CachedNetworkImageProvider(
                  photoUrl,
                ),
              );
            } else {
              return const AppRoundedImage.extraLarge(
                imageName: AppImages.photo_placeholder_new,
              );
            }
          },
          orElse: () => throw UnexpectedStateError(),
        );
      },
    );
  }
}

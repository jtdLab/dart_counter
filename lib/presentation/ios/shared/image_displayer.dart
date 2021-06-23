import 'package:cached_network_image/cached_network_image.dart';
import 'package:dart_counter/application/core/user/user_bloc.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/errors.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_rounded_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageDisplayer extends StatelessWidget {
  const ImageDisplayer({
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

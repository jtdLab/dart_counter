import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dart_counter/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/circle_image.dart';
import 'package:dart_counter/presentation/ios/profile/widgets/edit_profile_picture_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Header extends StatelessWidget {
  final String? photoUrl;

  const Header({Key? key, this.photoUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserWatcherBloc, UserWatcherState>(
      builder: (context, state) {
        return ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
          child: Container(
            color: AppColors.black,
            child: Center(
              child: Column(
                children: [
                  const Spacer(
                    flex: 22,
                  ),
                  Expanded(
                    flex: 163,
                    child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => showCupertinoModalBottomSheet(
                        context: context,
                        builder: (context) => EditProfilePictureModal(),
                      ),
                      child: photoUrl != null
                          ? CircleImage(
                              CachedNetworkImageProvider(photoUrl!),
                            )
                          : const CircleImage(
                              AssetImage(AppImages.photoPlaceholder),
                            ),
                    ),
                  ),
                  const Spacer(
                    flex: 17,
                  ),
                  AutoSizeText(
                    'Player name',
                    maxLines: 1,
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                  const Spacer(
                    flex: 16,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

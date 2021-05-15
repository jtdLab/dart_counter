import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/circle_image.dart';
import 'package:dart_counter/presentation/ios/profile/widgets/edit_profile_picture_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Header extends StatelessWidget {
  final Profile? profile;

  const Header({Key? key, this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  child: profile?.photoUrl != null
                      ? CircleImage(
                          image: NetworkImage(profile!.photoUrl!),
                        )
                      : CircleImage(
                          image: const AssetImage(AppImages.photoPlaceholder),
                        ),
                ),
              ),
              const Spacer(
                flex: 17,
              ),
              AutoSizeText(
                profile?.username.getOrCrash() ?? '--',
                maxLines: 1,
                style: const TextStyle(
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
  }
}

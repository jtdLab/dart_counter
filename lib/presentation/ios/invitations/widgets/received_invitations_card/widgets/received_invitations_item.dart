import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_spacer.dart';
import 'package:dart_counter/presentation/ios/core/widgets/rounded_image.dart';
import 'package:flutter/cupertino.dart';

class ReceivedInvitationsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppCardItem.large(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const RoundedImage.normal(
            imageName: AppImages.photo_placeholder_new,
          ),
          Text(
            'Anis Abi'.toUpperCase(),
          ),
          Row(
            children: [
              Image.asset(AppImages.check_mark_dark_new),
              const AppSpacer.normal(),
              Image.asset(AppImages.x_mark_filled_new),
            ],
          ),
        ],
      ),
    );
  }
}

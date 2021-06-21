import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_rounded_image.dart';
import 'package:flutter/cupertino.dart';

class PlayerItem extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: const Key('PlayerItem'), // TODO
      direction: DismissDirection.endToStart,
      background: Container(color: AppColors.red,),
      child: AppCardItem.large(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const AppRoundedImage.normal(
              imageName: AppImages.photo_placeholder_new,
            ),
            Text(
              'Anis Abi'.toUpperCase(),
            ),
            AppIconButton(
              onPressed: () {},
              icon: Image.asset(
                AppImages.settings_new,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

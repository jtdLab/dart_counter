import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';

class PlayerItem extends StatelessWidget {
  const PlayerItem({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: const Key('PlayerItem'), // TODO
      direction: DismissDirection.endToStart,
      background: Container(
        color: AppColors.red,
      ),
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

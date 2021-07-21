import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';

class FriendRequestCardItem extends StatelessWidget {
  const FriendRequestCardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardItem.large(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const AppRoundedImage.normal(
            imageName: AppImages.photoPlaceholderNew,
          ),
          Text(
            'Anis Abi'.toUpperCase(),
          ),
          AppIconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Image.asset(
              AppImages.settingsNew,
            ),
          ),
        ],
      ),
    );
  }
}
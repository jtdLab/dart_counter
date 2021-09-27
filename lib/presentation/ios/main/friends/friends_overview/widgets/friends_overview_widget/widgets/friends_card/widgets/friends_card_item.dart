import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';
import 'package:dart_counter/presentation/ios/main/friends/friends_overview/modals/more/more_modal.dart';



class FriendsCardItem extends StatelessWidget {
  const FriendsCardItem({
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
            onPressed: () {
                showCupertinoModalBottomSheet(
                  backgroundColor: Colors.white70,
                  context: context,
                  builder: (context) => MoreModal(),
                );
              },
            icon: Image.asset(
              AppImages.settingsNew,
            ),
          ),
        ],
      ),
    );
  }
}

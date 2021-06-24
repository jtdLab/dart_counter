import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';

class SentInvitationsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppCardItem.large(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const AppRoundedImage.normal(
            imageName: AppImages.photo_placeholder_new,
          ),
          Text(
            'Anis Abi'.toUpperCase(),
          ),
          Image.asset(AppImages.check_mark_dark_new),
        ],
      ),
    );
  }
}

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';

class ReceivedInvitationsItem extends StatelessWidget {
  final String name;

  const ReceivedInvitationsItem({
    Key? key,
    required this.name,
  }) : super(key: key);

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
            name.toUpperCase(),
          ),
          Row(
            children: [
              AppIconButton(
                padding: EdgeInsets.zero,
                icon: Image.asset(AppImages.check_mark_dark_new),
                onPressed: () {}, // TODO
              ),
              const AppSpacer.normal(
                orientation: Orientation.horizontal,
              ),
              AppIconButton(
                padding: EdgeInsets.zero,
                icon: Image.asset(AppImages.x_mark_filled_new),
                onPressed: () {}, // TODO
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter/cupertino.dart' hide Orientation;

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
              Image.asset(AppImages.check_mark_dark_new),
              const AppSpacer.normal(
                orientation: Orientation.horizontal,
              ),
              Image.asset(AppImages.x_mark_filled_new),
            ],
          ),
        ],
      ),
    );
  }
}

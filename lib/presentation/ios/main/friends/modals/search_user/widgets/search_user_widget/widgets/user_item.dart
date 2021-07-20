import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';

class UserItem extends StatelessWidget {
  final String name;

  const UserItem({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardItem.large(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 16,
            ),
            child: AppRoundedImage.small(
              imageName: AppImages.photoPlaceholderNew,
            ),
          ),
          Text(
            name.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
            ),
            child: AppIconButton(
              onPressed: () {}, // TODO
              icon: Image.asset(
                AppImages.addNew,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

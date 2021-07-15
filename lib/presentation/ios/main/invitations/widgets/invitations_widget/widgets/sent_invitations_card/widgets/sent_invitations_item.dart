import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';

class SentInvitationsItem extends StatelessWidget {
  final String name;

  const SentInvitationsItem({
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
            imageName: AppImages.photoPlaceholderNew,
          ),
          Text(
            name.toUpperCase(),
          ),
          Image.asset(AppImages.clockYellowNew),
        ],
      ),
    );
  }
}

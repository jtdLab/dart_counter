import 'package:dart_counter/application/friends/friends_bloc.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';

class FriendRequestCardItem extends StatelessWidget {
  final FriendRequest friendRequest;

  const FriendRequestCardItem({
    Key? key,
    required this.friendRequest,
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
            friendRequest.fromName.getOrCrash().toUpperCase(),
          ),
          Row(
            children: [
              AppIconButton(
                padding: EdgeInsets.zero,
                icon: Image.asset(AppImages.checkMarkDarkNew),
                onPressed: () {},
                /**
                 * onPressed: () => context.read<FriendsBloc>().add(
                      FriendsEvent.accepted(friendRequest: friendRequest),
                    ),
                 */
              ),
              const AppSpacer.normal(
                orientation: Orientation.horizontal,
              ),
              AppIconButton(
                padding: EdgeInsets.zero,
                icon: Image.asset(AppImages.xMarkFilledNew),
                onPressed: () {},
                /**
                 * onPressed: () => context.read<FriendsBloc>().add(
                      FriendsEvent.accepted(friendRequest: friendRequest),
                    ),
                 */
              ),
            ],
          ),
        ],
      ),
    );
  }
}

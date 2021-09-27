import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/app_card.dart';

import 'widgets/friend_request_card_item.dart';


class FriendRequestCard extends StatelessWidget {
  const FriendRequestCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: Text(
        'Received Friend Requests'.toUpperCase(), // TODO localkeys
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        FriendRequestCardItem(friendRequest: FriendRequest.dummy()), // TODO
        FriendRequestCardItem(friendRequest: FriendRequest.dummy()),
        FriendRequestCardItem(friendRequest: FriendRequest.dummy()),
      ],
    );
  }
}

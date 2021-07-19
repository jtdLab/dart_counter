import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/main/friends/widgets/friends_widget/widgets/friend_request_card/widgets/widgets.dart';

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
      children: const [
        FriendRequestCardItem(),
        FriendRequestCardItem(),
        FriendRequestCardItem(),
      ],
    );
  }
}

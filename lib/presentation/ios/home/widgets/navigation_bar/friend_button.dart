import 'package:badges/badges.dart';

import 'package:dart_counter/application/core/friend_request/friend_request_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/widgets/app_navigation_bar_button.dart';

class FriendButton extends StatelessWidget {
  const FriendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Badge(
      badgeContent: BlocBuilder<FriendRequestBloc, FriendRequestState>(
        builder: (context, state) => state.maybeMap(
          loadSuccess: (loadSuccess) => Text(
            loadSuccess.friendRequests.size.toString(),
            style: const TextStyle(
                color: AppColors.white, fontWeight: FontWeight.bold),
          ),
          orElse: () => const Text(
            '0',
            style:
                TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      position: BadgePosition.topEnd(
        top: -13,
      ),
      child: AppNavigationBarButton(
        onPressed: () => context.router.push(const FriendsPageRoute()),
        child: Image.asset(
          AppImages.player_new,
        ),
      ),
    );
  }
}

import 'package:badges/badges.dart';

import 'package:dart_counter/application/home/home_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/widgets/app_navigation_bar_button.dart';

class FriendButton extends StatelessWidget {
  const FriendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final unreadFriendRequests = state.unreadFriendRequests;

        if (unreadFriendRequests == 0) {
          return AppNavigationBarButton(
            onPressed: () {
              context
                  .read<HomeBloc>()
                  .add(const HomeEvent.goToFriendsPressed());
              context.router.push(const FriendsPageRoute());
            },
            child: Image.asset(
              AppImages.player_new,
              fit: BoxFit.fitHeight,
            ),
          );
        } else {
          return Badge(
            badgeContent: Text(
              unreadFriendRequests.toString(),
              style: const TextStyle(
                  color: AppColors.white, fontWeight: FontWeight.bold),
            ),
            position: BadgePosition.topEnd(
              top: -13,
            ),
            child: AppNavigationBarButton(
              onPressed: () {
                context
                    .read<HomeBloc>()
                    .add(const HomeEvent.goToFriendsPressed());
                context.router.push(const FriendsPageRoute());
              },
              child: Image.asset(
                AppImages.player_new,
                fit: BoxFit.fitHeight,
              ),
            ),
          );
        }
      },
    );
  }
}
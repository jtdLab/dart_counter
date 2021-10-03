part of 'overview_page.dart';

// BODY
class _OverviewWidget extends StatelessWidget {
  const _OverviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size12(context),
      children: const [
        AppSpacer.small(),
        _FriendRequestCard(),
        AppSpacer.small(),
        _FriendsCard(),
      ],
    );
  }
}

class _FriendRequestCard extends StatelessWidget {
  const _FriendRequestCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FriendsBloc, FriendsState>(
      builder: (context, state) {
        final receivedFriendRequests = state.receivedFriendRequests;

        return AppCard(
          middle: Text(
            'Received Friend Requests'.toUpperCase(), // TODO localkeys
            style: CupertinoTheme.of(context)
                .textTheme
                .textStyle
                .copyWith(color: AppColors.white),
          ),
          children: receivedFriendRequests.iter
              .map(
                (friendRequest) =>
                    _FriendRequestCardItem(friendRequest: friendRequest),
              )
              .toList(),
        );
      },
    );
  }
}

class _FriendRequestCardItem extends StatelessWidget {
  final FriendRequest friendRequest;

  const _FriendRequestCardItem({
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
            imageName: AppImages.photoPlaceholderNew, // TODO real photo url
          ),
          Text(
            friendRequest.fromName.getOrCrash().toUpperCase(),
          ),
          Row(
            children: [
              AppIconButton(
                padding: EdgeInsets.zero,
                icon: Image.asset(AppImages.checkMarkDarkNew),
                onPressed: () => context.read<FriendsBloc>().add(
                      FriendsEvent.friendRequestAccepted(
                        friendRequest: friendRequest,
                      ),
                    ),
              ),
              const AppSpacer.normal(
                orientation: Orientation.horizontal,
              ),
              AppIconButton(
                padding: EdgeInsets.zero,
                icon: Image.asset(AppImages.xMarkFilledNew),
                onPressed: () => context.read<FriendsBloc>().add(
                      FriendsEvent.friendRequestDeclined(
                        friendRequest: friendRequest,
                      ),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FriendsCard extends StatelessWidget {
  const _FriendsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FriendsBloc, FriendsState>(
      builder: (context, state) {
        final friends = state.friends;

        return AppCard(
          middle: Text(
            LocaleKeys.friends.tr().toUpperCase(),
            style: CupertinoTheme.of(context)
                .textTheme
                .textStyle
                .copyWith(color: AppColors.white),
          ),
          children: friends.iter
              .map(
                (friend) => _FriendsCardItem(friend: friend),
              )
              .toList(),
        );
      },
    );
  }
}

class _FriendsCardItem extends StatelessWidget {
  final Friend friend;

  const _FriendsCardItem({
    Key? key,
    required this.friend,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardItem.large(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const AppRoundedImage.normal(
            imageName: AppImages.photoPlaceholderNew, // TODO real photo url
          ),
          Text(
            friend.profile.username.getOrCrash().toUpperCase(),
          ),
          AppIconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              showCupertinoModalBottomSheet(
                backgroundColor: Colors.white70,
                context: context,
                builder: (context) => MoreModal(),
              );
            },
            icon: Image.asset(
              AppImages.settingsNew,
            ),
          ),
        ],
      ),
    );
  }
}

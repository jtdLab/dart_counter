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
      children: [
        SizedBox(
          height: spacerSmall(context),
        ),
        const _FriendRequestCard(),
        SizedBox(
          height: spacerSmall(context),
        ),
        const _FriendsCard(),
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
        children: [
          SizedBox(
            width: spacerNormal(context),
          ),
          const AppRoundedImage.normal(
            imageName: AppImages.photoPlaceholderNew, // TODO real photo url
          ),
          const Spacer(),
          Text(
            friendRequest.fromName.getOrCrash().toUpperCase(),
          ),
          const Spacer(),
          Row(
            children: [
              AppIconButton(
                icon: Image.asset(AppImages.checkMarkDarkNew),
                onPressed: () => context.read<FriendsBloc>().add(
                      FriendsEvent.friendRequestAccepted(
                        friendRequest: friendRequest,
                      ),
                    ),
              ),
              AppIconButton(
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
        children: [
          SizedBox(
            width: spacerNormal(context),
          ),
          const AppRoundedImage.normal(
            imageName: AppImages.photoPlaceholderNew, // TODO real photo url
          ),
          const Spacer(),
          Text(
            friend.profile.username.getOrCrash().toUpperCase(),
          ),
          const Spacer(),
          AppIconButton(
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

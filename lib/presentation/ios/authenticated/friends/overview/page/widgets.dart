part of 'overview_page.dart';

// BODY
class FriendsOverviewView extends StatelessWidget {
  const FriendsOverviewView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      onTap: () => FocusScope.of(context).unfocus(),
      navigationBar: AppNavigationBar(
        leading: const BackButton(),
        middle: Text(context.l10n.friends.toUpperCase()),
        trailing: AppNavigationBarButton(
          noPaddingRight: true,
          onPressed: () {
            context.router.push(const SearchUserModalRoute());
          },
          child: Image.asset(
            AppImages.lupeNew,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: AppColumn(
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
        ),
      ),
    );
  }
}

class _FriendRequestCard extends StatelessWidget {
  const _FriendRequestCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<watcher.FriendsCubit, watcher.FriendsState>(
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
    return BlocBuilder<watcher.FriendsCubit, watcher.FriendsState>(
      builder: (context, state) {
        final friends = state.friends;

        return AppCard(
          middle: Text(
            context.l10n.friends.toUpperCase(),
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
    final photoUrl = friend.profile.photoUrl;

    return AppCardItem.large(
      content: Row(
        children: [
          SizedBox(
            width: spacerNormal(context),
          ),
          if (photoUrl != null) ...[
            AppRoundedImage.normal(
              child: CachedNetworkImageProvider(photoUrl),
            ),
          ] else ...[
            const AppRoundedImage.normal(
              imageName: AppImages.photoPlaceholderNew,
            ),
          ],
          const Spacer(),
          Text(
            friend.profile.name.getOrCrash().toUpperCase(),
          ),
          const Spacer(),
          AppIconButton(
            onPressed: () {
              // TODO pass friend not thru ui ???
              context.read<FriendsBloc>().add(
                    FriendsEvent.friendSelected(
                      friend: friend,
                    ),
                  );

              context.router.push(const MoreModalRoute());
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

part of 'overview_page.dart';

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
    return AppCard(
      middle: Text(
        'Received Friend Requests'.toUpperCase(), // TODO localkeys
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        _FriendRequestCardItem(friendRequest: FriendRequest.dummy()), // TODO
        _FriendRequestCardItem(friendRequest: FriendRequest.dummy()),
        _FriendRequestCardItem(friendRequest: FriendRequest.dummy()),
      ],
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

class _FriendsCard extends StatelessWidget {
  const _FriendsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: Text(
        LocaleKeys.friends.tr().toUpperCase(),
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: const [
        _FriendsCardItem(),
        _FriendsCardItem(),
        _FriendsCardItem(),
        _FriendsCardItem(),
        _FriendsCardItem(),
        _FriendsCardItem(),
      ],
    );
  }
}

class _FriendsCardItem extends StatelessWidget {
  const _FriendsCardItem({
    Key? key,
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
            'Anis Abi'.toUpperCase(),
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

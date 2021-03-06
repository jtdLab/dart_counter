part of 'home_page.dart';

// NAVBAR
class _SettingsButton extends StatelessWidget {
  const _SettingsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      noPaddingLeft: true,
      onPressed: () => context.router.push(const SettingsFlowRoute()),
      child: Image.asset(
        AppImages.settingsNew,
      ),
    );
  }
}

class _GameInvitationsButton extends StatelessWidget {
  const _GameInvitationsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unreadReceivedInvitations =
        context.watch<HomeLoadSuccess>().unreadGameInvitations;

    if (unreadReceivedInvitations == 0) {
      return AppNavigationBarButton(
        onPressed: () => context.router.push(const GameInvitationsPageRoute()),
        child: Image.asset(
          AppImages.messageNew,
        ),
      );
    } else {
      return AppNavigationBarButton(
        onPressed: () => context.router.push(const GameInvitationsPageRoute()),
        child: Badge(
          badgeContent: AutoSizeText(
            unreadReceivedInvitations.toString(),
            maxLines: 1,
            minFontSize: maxFontSizeSmall(context),
            maxFontSize: maxFontSizeNormal(context),
            style: CupertinoTheme.of(context)
                .textTheme
                .textStyle
                .copyWith(color: AppColors.white),
          ),
          position: BadgePosition.topEnd(
            top: -13,
          ),
          child: Image.asset(
            AppImages.messageNew,
          ),
        ),
      );
    }
  }
}

class _FriendsButton extends StatelessWidget {
  const _FriendsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unreadFriendRequests =
        context.watch<HomeLoadSuccess>().unreadFriendRequests;

    if (unreadFriendRequests == 0) {
      return AppNavigationBarButton(
        onPressed: () => context.router.push(const FriendsFlowRoute()),
        child: Image.asset(
          AppImages.playerNew,
        ),
      );
    } else {
      return AppNavigationBarButton(
        onPressed: () => context.router.push(const FriendsFlowRoute()),
        child: Badge(
          badgeContent: Text(
            unreadFriendRequests.toString(),
            style: const TextStyle(
                color: AppColors.white, fontWeight: FontWeight.bold),
          ),
          position: BadgePosition.topEnd(
            top: -13,
          ),
          child: Image.asset(
            AppImages.playerNew,
          ),
        ),
      );
    }
  }
}

class _StatsButton extends StatelessWidget {
  const _StatsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      noPaddingRight: true,
      onPressed: () => context.router.push(const ProfilePageRoute()),
      child: Image.asset(
        AppImages.statsNew,
      ),
    );
  }
}

// BODY
class _HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final photoUrl = context.read<HomeLoadSuccess>().user.profile.photoUrl;

    return Column(
      children: [
        const Spacer(),
        ProfileImageDisplayer(
          photoUrl: photoUrl,
        ),
        const Spacer(flex: 2),
        const _NameDisplayer(),
        const Spacer(flex: 2),
        _PlayOnlineButton(),
        SizedBox(
          height: spacerNormal(context),
        ),
        _PlayOfflineButton(),
        SizedBox(
          height: spacerNormal(context),
        ),
        _TrainButton(),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            _InstagramButton(),
            _YoutubeButton(),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}

class _NameDisplayer extends StatelessWidget {
  const _NameDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username =
        context.read<HomeLoadSuccess>().user.profile.name.getOrCrash();

    return Container(
      height: size40(context),
      decoration: BoxDecoration(
        color: AppColors.blueNew,
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: Center(
        child: AutoSizeText(
          username.toUpperCase(),
          maxLines: 1,
          minFontSize: 8,
          maxFontSize: maxFontSizeNormal(context),
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}

class _PlayOnlineButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      onPressed: () => context.read<CreateOnlineGameCubit>().createGame(),
      color: AppColors.orangeNew,
      fontColor: AppColors.black,
      icon: Image.asset(AppImages.playersNew),
      text: '${LocaleKeys.play.tr()} ${LocaleKeys.online.tr()}'.toUpperCase(),
    );
  }
}

class _PlayOfflineButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      onPressed: () => context.router.replace(const PlayOfflineFlowRoute()),
      color: AppColors.white,
      fontColor: AppColors.black,
      icon: Image.asset(AppImages.robotNew),
      text: '${LocaleKeys.play.tr()} ${LocaleKeys.offline.tr()}'.toUpperCase(),
    );
  }
}

class _TrainButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      onPressed: () {
        context.router.replace(const TrainingFlowRoute());
      },
      color: AppColors.black,
      icon: Image.asset(AppImages.targetNew),
      text: LocaleKeys.practice.tr().toUpperCase(),
    );
  }
}

class _InstagramButton extends StatelessWidget {
  const _InstagramButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () async =>
          await canLaunch('https://www.instagram.com/darts_ger/')
              ? await launch('https://www.instagram.com/darts_ger/')
              : throw 'Could not launch https://www.instagram.com/darts_ger/',
      child: SizedBox(
        width: 3 * size12(context),
        height: 3 * size12(context),
        child: Image.asset(AppImages.igNew),
      ),
    );
  }
}

class _YoutubeButton extends StatelessWidget {
  const _YoutubeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () async => await canLaunch(
              'https://www.youtube.com/channel/UCChe8RMi5XJKri5hU9glisQ')
          ? await launch(
              'https://www.youtube.com/channel/UCChe8RMi5XJKri5hU9glisQ')
          : throw 'Could not launch https://www.youtube.com/channel/UCChe8RMi5XJKri5hU9glisQ',
      child: SizedBox(
        width: 3 * size12(context),
        height: 3 * size12(context),
        child: Image.asset(
          AppImages.googleNew,
        ),
      ),
    );
  }
}

part of 'home_page.dart';

// NAVBAR
class _SettingsButton extends StatelessWidget {
  const _SettingsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      onPressed: () => context.router.push(const SettingsPageRoute()),
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
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final unreadReceivedInvitations = state.unreadInvitations;

        if (unreadReceivedInvitations == 0) {
          return AppNavigationBarButton(
            onPressed: () =>
                context.router.push(const GameInvitationsPageRoute()),
            child: Image.asset(
              AppImages.messageNew,
              fit: BoxFit.fitHeight,
            ),
          );
        } else {
          return Badge(
            badgeContent: Text(
              unreadReceivedInvitations.toString(),
              style: const TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            position: BadgePosition.topEnd(
              top: -13,
            ),
            child: AppNavigationBarButton(
              onPressed: () =>
                  context.router.push(const GameInvitationsPageRoute()),
              child: Image.asset(
                AppImages.messageNew,
                fit: BoxFit.fitHeight,
              ),
            ),
          );
        }
      },
    );
  }
}

class _FriendsButton extends StatelessWidget {
  const _FriendsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final unreadFriendRequests = state.unreadFriendRequests;

        if (unreadFriendRequests == 0) {
          return AppNavigationBarButton(
            onPressed: () => context.router.push(const FriendsFlowRoute()),
            child: Image.asset(
              AppImages.playerNew,
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
              onPressed: () => context.router.push(const FriendsFlowRoute()),
              child: Image.asset(
                AppImages.playerNew,
                fit: BoxFit.fitHeight,
              ),
            ),
          );
        }
      },
    );
  }
}

class _StatsButton extends StatelessWidget {
  const _StatsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
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
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final photoUrl = state.user.profile.photoUrl;

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
            const AppSpacer.normal(),
            _PlayOfflineButton(),
            const AppSpacer.normal(),
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
      },
    );
  }
}

class _NameDisplayer extends StatelessWidget {
  const _NameDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final username = state.user.profile.username.getOrCrash();

        return Container(
          height: size40(context),
          decoration: BoxDecoration(
            color: AppColors.blueNew,
            border: Border.all(
              width: border4(context),
            ),
          ),
          child: Center(
            child: Text(
              username.toUpperCase(),
              style: CupertinoTheme.of(context)
                  .textTheme
                  .textStyle
                  .copyWith(color: AppColors.white),
            ),
          ),
        );
      },
    );
  }
}

class _PlayOnlineButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      onPressed: () => context
          .read<HomeBloc>()
          .add(const HomeEvent.createOnlineGamePressed()),
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
      onPressed: () => context
          .read<HomeBloc>()
          .add(const HomeEvent.createOfflineGamePressed()),
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
      onPressed: () {}, // TODO go to practice overview
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
      child: Image.asset(AppImages.igNew),
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
      child: Image.asset(AppImages.googleNew),
    );
  }
}

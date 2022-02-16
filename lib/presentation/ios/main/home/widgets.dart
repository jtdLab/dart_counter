part of 'home_page.dart';

// NAVBAR
class _SettingsButton extends StatelessWidget {
  const _SettingsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      key: const Key('settings_button'), // TODO move up or not
      noPaddingLeft: true,
      onPressed: () => context.router.push(const SettingsFlowRoute()),
      child: Image.asset(AppImages.settingsNew),
    );
  }
}

class _GameInvitationsButton extends StatelessWidget {
  const _GameInvitationsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, int>(
      selector: (state) => (state as HomeLoadSuccess).unreadGameInvitations,
      builder: (context, unreadReceivedInvitations) {
        return AppNavigationBarButton(
          key: const Key('game_invitations_button'), // TODO move up or not
          onPressed: () =>
              context.router.push(const GameInvitationsPageRoute()),
          child: unreadReceivedInvitations == 0
              ? Image.asset(AppImages.messageNew)
              : Badge(
                  badgeContent: AutoSizeText(
                    '$unreadReceivedInvitations',
                    key: const Key('text_unreadReceivedInvitations'),
                    maxLines: 1,
                    minFontSize: maxFontSizeSmall(context),
                    maxFontSize: maxFontSizeNormal(context),
                    style: CupertinoTheme.of(context)
                        .textTheme
                        .textStyle
                        .copyWith(color: AppColors.white),
                  ),
                  position: BadgePosition.topEnd(top: -13),
                  child: Image.asset(AppImages.messageNew),
                ),
        );
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
    return BlocSelector<HomeBloc, HomeState, int>(
      selector: (state) => (state as HomeLoadSuccess).unreadFriendRequests,
      builder: (context, unreadFriendRequests) {
        return AppNavigationBarButton(
          key: const Key('friends_button'), // TODO move up or not
          onPressed: () => context.router.push(const FriendsFlowRoute()),
          child: unreadFriendRequests == 0
              ? Image.asset(AppImages.playerNew)
              : Badge(
                  badgeContent: Text(
                    '$unreadFriendRequests',
                    key: const Key('text_unreadFriendRequests'),
                    style: const TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  position: BadgePosition.topEnd(top: -13),
                  child: Image.asset(AppImages.playerNew),
                ),
        );
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
      key: const Key('stats_button'), // TODO move up or not
      noPaddingRight: true,
      onPressed: () => context.router.push(const ProfilePageRoute()),
      child: Image.asset(AppImages.statsNew),
    );
  }
}

// BODY
class _HomeWidget extends StatelessWidget {
  const _HomeWidget() // TODO local changed works with const constructor
      : super(
          key: const Key('home_widget'),
        );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.runtimeType != current.runtimeType,
      builder: (context, state) {
        return state.map(
          loadInProgress: (_) => const LoadingWidget(),
          loadSuccess: (_) => const _SuccessWidget(),
          loadFailure: (_) => const _FailureWidget(),
        );
      },
    );
  }
}

class _SuccessWidget extends StatelessWidget {
  const _SuccessWidget()
      : super(
          key: const Key('success_widget'),
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        BlocSelector<HomeBloc, HomeState, String?>(
          selector: (state) => (state as HomeLoadSuccess).user.profile.photoUrl,
          builder: (context, photoUrl) {
            return ProfileImageDisplayer(photoUrl: photoUrl);
          },
        ),
        const Spacer(flex: 2),
        const _NameDisplayer(),
        const Spacer(flex: 2),
        _PlayOnlineButton(),
        SizedBox(height: spacerNormal(context)),
        _PlayOfflineButton(),
        SizedBox(height: spacerNormal(context)),
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
    return Container(
      height: size40(context),
      decoration: BoxDecoration(
        color: AppColors.blueNew,
        border: Border.all(width: border4(context)),
      ),
      child: Center(
        child: BlocSelector<HomeBloc, HomeState, String>(
          selector: (state) =>
              (state as HomeLoadSuccess).user.profile.name.getOrCrash(),
          builder: (context, username) {
            return AutoSizeText(
              username.toUpperCase(),
              key: const Key('text_username'),
              maxLines: 1,
              minFontSize: 8,
              maxFontSize: maxFontSizeNormal(context),
              style: CupertinoTheme.of(context)
                  .textTheme
                  .textStyle
                  .copyWith(color: AppColors.white),
            );
          },
        ),
      ),
    );
  }
}

class _PlayOnlineButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      key: const Key('play_online_button'), // TODO move up or not
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
      key: const Key('play_offline_button'), // TODO move up or not
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
      key: const Key('train_button'), // TODO move up or not
      onPressed: () => context.router.replace(const TrainingFlowRoute()),
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
      key: const Key('instagramm_button'), // TODO move up or not
      onPressed: () async {
        // TODO does this logic belong in ui or application
        const url = 'https://www.instagram.com/darts_ger/';
        final launchable = await canLaunch(url);
        if (launchable) {
          await launch(url);
        }
      },
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
      key: const Key('youtube_button'), // TODO move up or not
      onPressed: () async {
        // TODO does this logic belong in ui or application
        const url = 'https://www.youtube.com/channel/UCChe8RMi5XJKri5hU9glisQ';
        final launchable = await canLaunch(url);
        if (launchable) {
          await launch(url);
        }
      },
      child: SizedBox(
        width: 3 * size12(context),
        height: 3 * size12(context),
        child: Image.asset(AppImages.googleNew),
      ),
    );
  }
}

class _FailureWidget extends StatelessWidget {
  const _FailureWidget()
      : super(
          key: const Key('failure_widget'),
        );

  @override
  Widget build(BuildContext context) {
    return const Text('TODO');
  }
}

part of 'home_page.dart';

// Navbar
class FriendButton extends StatelessWidget {
  const FriendButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final unreadFriendRequests =
            (state as HomeLoadSuccess).unreadFriendRequests;

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

class InvitationButton extends StatelessWidget {
  const InvitationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final unreadReceivedInvitations =
            (state as HomeLoadSuccess).unreadInvitations;

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

class SettingsButton extends StatelessWidget {
  const SettingsButton({
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

class StatsButton extends StatelessWidget {
  const StatsButton({
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

// Body
class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final photoUrl = (state as HomeLoadSuccess).user.profile.photoUrl;

        return Column(
          children: [
            const Spacer(),
            ProfileImageDisplayer(
              photoUrl: photoUrl,
            ),
            const Spacer(flex: 2),
            const NameDisplayer(),
            const Spacer(flex: 2),
            PlayOnlineButton(),
            const AppSpacer.normal(),
            PlayOfflineButton(),
            const AppSpacer.normal(),
            TrainButton(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                InstagramButton(),
                YoutubeButton(),
              ],
            ),
            const Spacer(),
          ],
        );
      },
    );
  }
}

class InstagramButton extends StatelessWidget {
  const InstagramButton({
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

class NameDisplayer extends StatelessWidget {
  const NameDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final username =
            (state as HomeLoadSuccess).user.profile.username.getOrCrash();

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

class PlayOfflineButton extends StatelessWidget {
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

class PlayOnlineButton extends StatelessWidget {
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

class TrainButton extends StatelessWidget {
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

class YoutubeButton extends StatelessWidget {
  const YoutubeButton({
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

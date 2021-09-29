part of './game_invitations_page.dart';

class GameInvitationsWidget extends StatelessWidget {
  const GameInvitationsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size12(context),
      children: const [
        AppSpacer.small(),
        ReceivedGameInvitationsCard(),
        AppSpacer.small(),
        SentGameInvitationsCard(),
      ],
    );
  }
}

class ReceivedGameInvitationsCard extends StatelessWidget {
  const ReceivedGameInvitationsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvitationsBloc, InvitationsState>(
      builder: (context, state) {
        final gameInvitations = state.receivedGameInvitations;

        return AppCard(
          middle: Text(
            LocaleKeys.received.tr().toUpperCase(),
            style: CupertinoTheme.of(context)
                .textTheme
                .textStyle
                .copyWith(color: AppColors.white),
          ),
          children: [
            for (int index = 0; index < gameInvitations.size; index++)
              Column(
                children: [
                  ReceivedGameInvitationsItem(
                    gameInvitation: gameInvitations[index],
                  ),
                ],
              )
          ],
        );
      },
    );
  }
}

class ReceivedGameInvitationsItem extends StatelessWidget {
  final GameInvitation gameInvitation;

  const ReceivedGameInvitationsItem({
    Key? key,
    required this.gameInvitation,
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
            gameInvitation.fromName.getOrCrash().toUpperCase(),
          ),
          Row(
            children: [
              AppIconButton(
                padding: EdgeInsets.zero,
                icon: Image.asset(AppImages.checkMarkDarkNew),
                onPressed: () => context.read<InvitationsBloc>().add(
                      InvitationsEvent.accepted(gameInvitation: gameInvitation),
                    ),
              ),
              const AppSpacer.normal(
                orientation: Orientation.horizontal,
              ),
              AppIconButton(
                padding: EdgeInsets.zero,
                icon: Image.asset(AppImages.xMarkFilledNew),
                onPressed: () => context.read<InvitationsBloc>().add(
                      InvitationsEvent.declined(gameInvitation: gameInvitation),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SentGameInvitationsCard extends StatelessWidget {
  const SentGameInvitationsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvitationsBloc, InvitationsState>(
      builder: (context, state) {
        final gameInvitations = state.sentGameInvitations;

        return AppCard(
          middle: Text(
            LocaleKeys.sent.tr().toUpperCase(),
            style: CupertinoTheme.of(context)
                .textTheme
                .textStyle
                .copyWith(color: AppColors.white),
          ),
          children: [
            for (int index = 0; index < gameInvitations.size; index++)
              Column(
                children: [
                  SentGameInvitationsItem(
                    name: gameInvitations[index].fromName.getOrCrash(),
                  ),
                ],
              )
          ],
        );
      },
    );
  }
}

class SentGameInvitationsItem extends StatelessWidget {
  final String name;

  const SentGameInvitationsItem({
    Key? key,
    required this.name,
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
            name.toUpperCase(),
          ),
          Image.asset(AppImages.clockYellowNew),
        ],
      ),
    );
  }
}

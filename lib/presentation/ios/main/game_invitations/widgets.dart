part of './game_invitations_page.dart';

// BODY
class _GameInvitationsWidget extends StatelessWidget {
  const _GameInvitationsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size12(context),
      children: const [
        AppSpacer.small(),
        _ReceivedGameInvitationsCard(),
        AppSpacer.small(),
        _SentGameInvitationsCard(),
      ],
    );
  }
}

class _ReceivedGameInvitationsCard extends StatelessWidget {
  const _ReceivedGameInvitationsCard({
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
                  _ReceivedGameInvitationsItem(
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

class _ReceivedGameInvitationsItem extends StatelessWidget {
  final GameInvitation gameInvitation;

  const _ReceivedGameInvitationsItem({
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

class _SentGameInvitationsCard extends StatelessWidget {
  const _SentGameInvitationsCard({
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
                  _SentGameInvitationsItem(
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

class _SentGameInvitationsItem extends StatelessWidget {
  final String name;

  const _SentGameInvitationsItem({
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

part of './game_invitations_page.dart';

// BODY
class GameInvitationsView extends StatelessWidget {
  const GameInvitationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GameInvitationsBloc, GameInvitationsState>(
      listenWhen: (oldState, newState) => newState is GameInvitationsInitial,
      listener: (context, state) {
        state.mapOrNull(
          // TODO move this logic to sepreate join game bloc
          initial: (initial) {
            final initialSnapshot = initial.gameSnapshot;

            if (initialSnapshot != null) {
              // TODO replace all needed?
              context.router.replaceAll(
                [
                  PlayOnlineFlowRoute(
                    children: [
                      CreateOnlineGameFlowRoute(
                        children: [
                          CreateOnlineGamePageRoute(
                            initialSnapshot: initialSnapshot,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              );
            }
          },
        );
      },
      builder: (context, state) {
        return state.map(
          initial: (_) => AppPage(
            navigationBar: AppNavigationBar(
              leading: const BackButton(),
              middle: Text(context.l10n.invitations.toUpperCase()),
            ),
            child: SingleChildScrollView(
              child: AppColumn(
                spacing: size12(context),
                children: [
                  SizedBox(
                    height: spacerSmall(context),
                  ),
                  const _ReceivedGameInvitationsCard(),
                  SizedBox(
                    height: spacerSmall(context),
                  ),
                  const _SentGameInvitationsCard(),
                ],
              ),
            ),
          ),
          loadInProgress: (_) => const AppPage(child: LoadingWidget()),
          failure: (failure) => const Text('FAILURE '), // TODO
        );
      },
    );
  }
}

class _ReceivedGameInvitationsCard extends StatelessWidget {
  const _ReceivedGameInvitationsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<cubit.GameInvitationsCubit, cubit.GameInvitationsState,
        cubit.GameInvitationsLoadSuccess>(
      selector: (state) => state as cubit.GameInvitationsLoadSuccess,
      builder: (context, state) {
        final gameInvitations = state.receivedGameInvitations;

        return AppCard(
          middle: Text(
            context.l10n.received.toUpperCase(),
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
        children: [
          SizedBox(
            width: spacerNormal(context),
          ),
          const AppRoundedImage.normal(
            imageName: AppImages.photoPlaceholderNew,
          ),
          const Spacer(),
          Text(
            gameInvitation.fromName.getOrCrash().toUpperCase(),
          ),
          const Spacer(),
          Row(
            children: [
              AppIconButton(
                icon: Image.asset(AppImages.checkMarkDarkNew),
                onPressed: () => context.read<GameInvitationsBloc>().add(
                      GameInvitationsEvent.invitationAccepted(
                        gameInvitation: gameInvitation,
                      ),
                    ),
              ),
              AppIconButton(
                icon: Image.asset(AppImages.xMarkFilledNew),
                onPressed: () => context.read<GameInvitationsBloc>().add(
                      GameInvitationsEvent.invitationDeclined(
                        gameInvitation: gameInvitation,
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

class _SentGameInvitationsCard extends StatelessWidget {
  const _SentGameInvitationsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<cubit.GameInvitationsCubit, cubit.GameInvitationsState,
        cubit.GameInvitationsLoadSuccess>(
      selector: (state) => state as cubit.GameInvitationsLoadSuccess,
      builder: (context, state) {
        final gameInvitations = state.sentGameInvitations;

        return AppCard(
          middle: Text(
            context.l10n.sent.toUpperCase(),
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
        children: [
          SizedBox(
            width: spacerNormal(context),
          ),
          const AppRoundedImage.normal(
            imageName: AppImages.photoPlaceholderNew,
          ),
          const Spacer(),
          Text(
            name.toUpperCase(),
          ),
          const Spacer(),
          Image.asset(AppImages.clockYellowNew),
          SizedBox(
            width: spacerNormal(context),
          ),
        ],
      ),
    );
  }
}

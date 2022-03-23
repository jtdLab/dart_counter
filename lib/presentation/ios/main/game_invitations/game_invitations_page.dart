// CORE
import 'package:dart_counter/application/main/core/game_invitations/game_invitations_cubit.dart'
    as cubit;
// BLOCS
import 'package:dart_counter/application/main/game_invitations/game_invitations_bloc.dart';
// DOMAIN
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// LOCAL WIDGETS
import '../shared/widgets.dart';

part 'widgets.dart';

class GameInvitationsPage extends StatelessWidget {
  const GameInvitationsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameInvitationsBloc.getIt()
        ..add(const GameInvitationsEvent.started()),
      child: BlocConsumer<GameInvitationsBloc, GameInvitationsState>(
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
                middle: Text(LocaleKeys.invitations.tr().toUpperCase()),
              ),
              child: const SingleChildScrollView(
                child: _GameInvitationsWidget(),
              ),
            ),
            loadInProgress: (_) => const AppPage(child: LoadingWidget()),
            failure: (failure) => const Text('FAILURE '), // TODO
          );
        },
      ),
    );
  }
}

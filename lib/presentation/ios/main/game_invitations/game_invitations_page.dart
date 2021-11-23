// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/game_invitations/game_invitations_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';

// LOCAL WIDGETS
import './../shared.dart';
part 'widgets.dart';

class GameInvitationsPage extends StatelessWidget {
  const GameInvitationsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GameInvitationsBloc>(),
      child: BlocConsumer<GameInvitationsBloc, GameInvitationsState>(
        listener: (context, state) {
          if (state.gameSnapshot != null) {
            context.router.replaceAll([const PlayOnlineFlowRoute()]);
          }
        },
        builder: (context, state) {
          if (state.loading) {
            return const AppPage(child: LoadingWidget());
          }

          return AppPage(
            navigationBar: AppNavigationBar(
              leading: const BackButton(),
              middle: Text(LocaleKeys.invitations.tr().toUpperCase()),
            ),
            child: const SingleChildScrollView(
              child: _GameInvitationsWidget(),
            ),
          );
        },
      ),
    );
  }
}

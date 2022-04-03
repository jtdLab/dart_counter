// CORE
import 'package:dart_counter/application/authenticated/core/game_invitations/game_invitations_cubit.dart'
    as cubit;
// BLOCS
import 'package:dart_counter/application/authenticated/game_invitations/game_invitations_bloc.dart';
// DOMAIN
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// LOCAL WIDGETS
import '../shared/widgets.dart';

part 'widgets.dart';

class GameInvitationsPage extends StatelessWidget implements AutoRouteWrapper {
  const GameInvitationsPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => GameInvitationsBloc.getIt()
        ..add(const GameInvitationsEvent.started()),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const GameInvitationsView();
  }
}

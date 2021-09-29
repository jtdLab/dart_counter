import 'package:dart_counter/injection.dart';
import 'package:dart_counter/application/invitations/invitations_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class GameInvitationsPage extends StatelessWidget {
  const GameInvitationsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<InvitationsBloc>(),
      child: BlocListener<InvitationsBloc, InvitationsState>(
        listener: (context, state) {
          if (state.game != null) {
            context.router.replaceAll([const GameFlowRoute()]);
          }
        },
        child: AppPage(
          navigationBar: AppNavigationBar(
            leading: const BackButton(),
            middle: Text(LocaleKeys.invitations.tr().toUpperCase()),
          ),
          child: const SingleChildScrollView(
            child: GameInvitationsWidget(),
          ),
        ),
      ),
    );
  }
}

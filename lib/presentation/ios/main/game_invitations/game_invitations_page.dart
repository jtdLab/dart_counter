// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/invitations/invitations_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/back_button.dart';

// LOCAL WIDGETS
part 'widgets.dart';

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

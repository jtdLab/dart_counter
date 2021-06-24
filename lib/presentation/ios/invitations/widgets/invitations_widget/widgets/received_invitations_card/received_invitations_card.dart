import 'package:dart_counter/application/core/invitation/invitation_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ReceivedInvitationsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvitationBloc, InvitationState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (success) {
            final gameInvitations = success.gameInvitations;

            return AppCard(
              middle: Text(
                LocaleKeys.received.tr().toUpperCase(),
                style: CupertinoTheme.of(context)
                    .textTheme
                    .textStyle
                    .copyWith(color: AppColors.white),
              ),
              children: gameInvitations
                  .asList()
                  .map(
                    (invitation) => ReceivedInvitationsItem(
                      name: invitation.from.getOrCrash(),
                    ),
                  )
                  .toList(),
            );
          },
          orElse: () => throw UnexpectedStateError(),
        );
      },
    );
  }
}

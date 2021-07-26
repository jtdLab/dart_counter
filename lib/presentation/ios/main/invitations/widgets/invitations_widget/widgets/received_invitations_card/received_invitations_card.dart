import 'package:dart_counter/application/invitations/invitations_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ReceivedInvitationsCard extends StatelessWidget {
  const ReceivedInvitationsCard({
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
                  ReceivedInvitationsItem(
                    name: gameInvitations[index].from.getOrCrash(),
                  ),
                ],
              )
          ],
        );
      },
    );
  }
}

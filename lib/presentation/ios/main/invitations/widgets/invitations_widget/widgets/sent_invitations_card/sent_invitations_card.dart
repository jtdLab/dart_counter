import 'package:dart_counter/application/invitations/invitations_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SentInvitationsCard extends StatelessWidget {
  const SentInvitationsCard({
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
                  SentInvitationsItem(
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

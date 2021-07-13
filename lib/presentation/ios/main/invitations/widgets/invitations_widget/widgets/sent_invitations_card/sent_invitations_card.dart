import 'package:dart_counter/application/invitations/invitations_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SentInvitationsCard extends StatelessWidget {
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
            // TODO extract into seperate widget
            SizedBox(
              height: 3 * size70(context) + 2 * size6(context),
              child: ListView.builder(
                itemCount: gameInvitations.size,
                itemBuilder: (context, index) {
                  final gameInvitation = gameInvitations[index];
                  return Column(
                    children: [
                      SentInvitationsItem(
                        name: gameInvitation.from.getOrCrash(),
                      ),
                      if (index < gameInvitations.size - 1)
                        SizedBox(
                          height: size6(context),
                        )
                    ],
                  );
                },
              ),
            )
          ],
        );
      },
    );
  }
}

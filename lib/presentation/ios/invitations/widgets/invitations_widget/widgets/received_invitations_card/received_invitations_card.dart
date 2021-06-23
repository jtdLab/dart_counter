import 'package:dart_counter/application/core/invitation/invitation_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          orElse: () => Container(), // TODO rly needed
        );
      },
    );
  }
}

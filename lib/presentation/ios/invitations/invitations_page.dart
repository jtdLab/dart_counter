import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

import 'widgets/received_invitations_card.dart';
import 'widgets/sent_invitations_card.dart';

class InvitationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          LocaleKeys.invitations.tr(),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              ReceivedInvitationsCard(),
              const SizedBox(
                height: 4,
              ),
              SentInvitationsCard(),
            ],
          ),
        ),
      ),
    );
  }
}

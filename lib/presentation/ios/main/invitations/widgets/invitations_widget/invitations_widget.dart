import 'package:flutter/cupertino.dart';

import 'widgets/widgets.dart';

class InvitationsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ReceivedInvitationsCard(),
        SentInvitationsCard(),
      ],
    );
  }
}

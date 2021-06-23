import 'package:flutter/cupertino.dart';

import 'widgets/widgets.dart';

class InvitationsWidget extends StatelessWidget {
  const InvitationsWidget({Key? key}) : super(key: key);

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

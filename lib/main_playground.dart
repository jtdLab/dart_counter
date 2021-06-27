import 'package:kt_dart/kt.dart';

import 'domain/game_invitation/game_invitation.dart';

void main() {
  final list = KtList.from(
    [
      GameInvitation.dummy(),
      GameInvitation.dummy(),
      GameInvitation.dummy(),
      GameInvitation.dummy(),
      GameInvitation.dummy(),
    ],
  );
}

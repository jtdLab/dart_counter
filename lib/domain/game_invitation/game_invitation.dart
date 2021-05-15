import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_invitation.freezed.dart';

@freezed
class GameInvitation with _$GameInvitation {
  const factory GameInvitation({
    required UniqueId id,
    required Username from,
    required int lobbyCode,
    bool? accepted,
    required bool read,
  }) = _GameInvitation;

  factory GameInvitation.dummy() => GameInvitation(
        id: UniqueId.fromUniqueString('dummyInvitationUID'),
        from: Username('dummyInviter'),
        lobbyCode: 8888,
        read: false,
      );
}

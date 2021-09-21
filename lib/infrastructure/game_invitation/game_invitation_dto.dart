import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_invitation_dto.freezed.dart';
part 'game_invitation_dto.g.dart';

@freezed
class GameInvitationDto with _$GameInvitationDto {
  const factory GameInvitationDto({
    required String id,
    required String gameId,
    required String toId,
    required String fromId,
    required String fromName,
    required bool read,
    @ServerTimestampConverter() String? createdAt,
  }) = _GameInvitationDto;

  const GameInvitationDto._();

  factory GameInvitationDto.fromDomain(GameInvitation invitation) {
    return GameInvitationDto(
      id: invitation.id.getOrCrash(),
      gameId: invitation.gameId.getOrCrash(),
      toId: invitation.toId.getOrCrash(),
      fromId: invitation.fromId.getOrCrash(),
      fromName: invitation.fromName.getOrCrash(),
      read: invitation.read,
    );
  }

  GameInvitation toDomain() {
    return GameInvitation(
      id: UniqueId.fromUniqueString(id),
      gameId: UniqueId.fromUniqueString(gameId),
      toId: UniqueId.fromUniqueString(toId),
      fromId: UniqueId.fromUniqueString(fromId),
      fromName: Username(fromName),
      read: read,
      createdAt: DateTime.parse(createdAt!), // TODO
    );
  }

  factory GameInvitationDto.fromFirestore(DocumentSnapshot doc) {
    final json = (doc.data() ?? {}) as Map<String, dynamic>;

    json.addAll({
      'id': doc.id,
    });

    return GameInvitationDto.fromJson(json);
  }

  factory GameInvitationDto.fromJson(Map<String, dynamic> json) =>
      _$GameInvitationDtoFromJson(json);
}

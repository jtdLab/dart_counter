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
    @JsonKey(ignore: true) String? id, // TODO ignore and nullable fix
    required String from,
    required int lobbyCode,
    required bool? accepted,
    required bool read,
    @JsonKey(includeIfNull: false)
    @ServerTimestampConverter()
        FieldValue? createdAt,
  }) = _GameInvitationDto;

  const GameInvitationDto._();

  factory GameInvitationDto.fromDomain(GameInvitation invitation) {
    return GameInvitationDto(
      id: invitation.id.getOrCrash(),
      from: invitation.from.getOrCrash(),
      lobbyCode: invitation.lobbyCode,
      accepted: invitation.accepted,
      read: invitation.read,
    );
  }

  GameInvitation toDomain() {
    return GameInvitation(
      id: UniqueId.fromUniqueString(id!),
      from: Username(from),
      lobbyCode: lobbyCode,
      accepted: accepted,
      read: read,
    );
  }

  factory GameInvitationDto.fromFirestore(DocumentSnapshot doc) {
    // TODO ! operator could make problems

    return GameInvitationDto.fromJson((doc.data() as Map<String, dynamic>?)!).copyWith(id: doc.id);
  }

  factory GameInvitationDto.fromJson(Map<String, dynamic> json) =>
      _$GameInvitationDtoFromJson(json);
}

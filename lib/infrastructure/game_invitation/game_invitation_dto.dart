import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
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

  factory GameInvitationDto.fromJson(Map<String, dynamic> json) =>
      _$GameInvitationDtoFromJson(json);
}

import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_request_dto.freezed.dart';
part 'friend_request_dto.g.dart';

@freezed
class FriendRequestDto with _$FriendRequestDto {
  const factory FriendRequestDto({
    @JsonKey(ignore: true) String? id, // TODO ignore and nullable fix
    required String from,
    bool? accepted,
    required bool read,
  }) = _FriendRequestDto;

  const FriendRequestDto._();

  factory FriendRequestDto.fromDomain(FriendRequest friendRequest) {
    return FriendRequestDto(
      id: friendRequest.id.getOrCrash(),
      from: friendRequest.from.getOrCrash(),
      accepted: friendRequest.accepted,
      read: friendRequest.read,
    );
  }

  FriendRequest toDomain() {
    return FriendRequest(
      id: UniqueId.fromUniqueString(id!),
      from: Username(from),
      accepted: accepted,
      read: read,
    );
  }

  factory FriendRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FriendRequestDtoFromJson(json);
}

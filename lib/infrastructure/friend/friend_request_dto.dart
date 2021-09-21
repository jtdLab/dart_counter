import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_request_dto.freezed.dart';
part 'friend_request_dto.g.dart';

@freezed
class FriendRequestDto with _$FriendRequestDto {
  const factory FriendRequestDto({
    required String id,
    required String toId,
    required String fromId,
    required String fromName,
    required bool read,
    @ServerTimestampConverter() String? createdAt,
  }) = _FriendRequestDto;

  const FriendRequestDto._();

  factory FriendRequestDto.fromDomain(FriendRequest friendRequest) {
    return FriendRequestDto(
      id: friendRequest.id.getOrCrash(),
      toId: friendRequest.toId.getOrCrash(),
      fromId: friendRequest.fromId.getOrCrash(),
      fromName: friendRequest.fromName.getOrCrash(),
      read: friendRequest.read,
    );
  }

  FriendRequest toDomain() {
    return FriendRequest(
      id: UniqueId.fromUniqueString(id),
      toId: UniqueId.fromUniqueString(toId),
      fromId: UniqueId.fromUniqueString(fromId),
      fromName: Username(fromName),
      read: read,
      createdAt: DateTime.parse(createdAt!), // TODO
    );
  }

  factory FriendRequestDto.fromFirestore(DocumentSnapshot doc) {
    final json = (doc.data() ?? {}) as Map<String, dynamic>;

    json.addAll({
      'id': doc.id,
    });

    return FriendRequestDto.fromJson(json);
  }

  factory FriendRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FriendRequestDtoFromJson(json);
}

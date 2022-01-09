import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_request.freezed.dart';

@freezed
class FriendRequest with _$FriendRequest {
  const factory FriendRequest({
    required UniqueId id,
    required UniqueId toId,
    required UniqueId fromId,
    required Username fromName,
    required bool read,
    required DateTime createdAt,
  }) = _FriendRequest;

  factory FriendRequest.dummy() => FriendRequest(
        id: UniqueId.fromUniqueString('dummyFromUid'),
        toId: UniqueId.fromUniqueString('dummyToUid'),
        fromId: UniqueId.fromUniqueString('dummyFromUid'),
        fromName: Username('dummyFriend'),
        read: faker.randomGenerator.boolean(),
        createdAt: DateTime.now(),
      );
}

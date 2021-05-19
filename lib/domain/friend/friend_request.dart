import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_request.freezed.dart';

@freezed
class FriendRequest with _$FriendRequest {
  const factory FriendRequest({
    required UniqueId id,
    required Username from,
    required bool? accepted,
    required bool read,
  }) = _FriendRequest;

  factory FriendRequest.dummy() => FriendRequest(
        id: UniqueId.fromUniqueString('dummyFriendRequestUID'),
        from: Username('dummyFriendRq'),
        accepted: null,
        read: false,
      );
}

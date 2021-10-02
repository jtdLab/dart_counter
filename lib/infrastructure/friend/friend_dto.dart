import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/infrastructure/user/profile_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_dto.freezed.dart';
part 'friend_dto.g.dart';

@freezed
class FriendDto with _$FriendDto {
  const factory FriendDto({
    required String id,
    required ProfileDto profile,
  }) = _FriendDto;

  const FriendDto._();

  Friend toDomain() {
    return Friend(
      id: UniqueId.fromUniqueString(id),
      profile: profile.toDomain(),
    );
  }

  factory FriendDto.fromFirestore(DocumentSnapshot doc) {
    final json = (doc.data() ?? {}) as Map<String, dynamic>;

    json.addAll({
      'id': doc.id,
    });

    return FriendDto.fromJson(json);
  }

  factory FriendDto.fromJson(Map<String, dynamic> json) =>
      _$FriendDtoFromJson(json);
}

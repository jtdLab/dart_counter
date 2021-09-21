import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:dart_counter/infrastructure/user/profile_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required ProfileDto profile,
  }) = _UserDto;

  const UserDto._();

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id),
      profile: profile.toDomain(),
    );
  }

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    final json = (doc.data() ?? {}) as Map<String, dynamic>;

    json.addAll({
      'id': doc.id,
    });

    return UserDto.fromJson(json);
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

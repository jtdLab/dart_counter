import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:dart_counter/domain/friend/user_search_result.dart';
import 'package:dart_counter/infrastructure/user/profile_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_search_result_dto.freezed.dart';
part 'user_search_result_dto.g.dart';

@freezed
class UserSearchResultDto with _$UserSearchResultDto {
  const factory UserSearchResultDto({
    required String id,
    String? photoUrl,
    required String name,
  }) = _UserSearchResultDto;

  const UserSearchResultDto._();

  UserSearchResult toDomain() {
    return UserSearchResult(
      id: UniqueId.fromUniqueString(id),
      photoUrl: photoUrl,
      username: Username(name),
    );
  }

  // TODO is this needed when using reast api
  factory UserSearchResultDto.fromFirestore(DocumentSnapshot doc) {
    final json = (doc.data() ?? {}) as Map<String, dynamic>;

    json.addAll({
      'id': doc.id,
    });

    return UserSearchResultDto.fromJson(json);
  }

  factory UserSearchResultDto.fromJson(Map<String, dynamic> json) =>
      _$UserSearchResultDtoFromJson(json);
}

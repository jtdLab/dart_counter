import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/user_search_result.dart';
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

  factory UserSearchResultDto.fromDomain(UserSearchResult userSearchResult) {
    return UserSearchResultDto(
      id: userSearchResult.id.getOrCrash(),
      photoUrl: userSearchResult.photoUrl,
      name: userSearchResult.name.getOrCrash(),
    );
  }

  UserSearchResult toDomain() {
    return UserSearchResult(
      id: UniqueId.fromUniqueString(id),
      photoUrl: photoUrl,
      name: Username(name),
    );
  }

  factory UserSearchResultDto.fromJson(Map<String, dynamic> json) =>
      _$UserSearchResultDtoFromJson(json);
}

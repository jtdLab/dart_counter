import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_search_result.freezed.dart';

@freezed
class UserSearchResult with _$UserSearchResult {
  const factory UserSearchResult({
    required UniqueId id,
    String? photoUrl,
    required Username username,
  }) = _UserSearchResult;

  factory UserSearchResult.dummy() => UserSearchResult(
        id: UniqueId.fromUniqueString(faker.randomGenerator.string(10)),
        photoUrl: faker.image.image(width: 200, height: 200),
        username: Username(
          faker.randomGenerator.element([
            'David88',
            'mrjosch',
            'SebiAbi69',
            'HoeHoe',
            'Soldier48',
            'Needs',
            'egesit',
            'AnisAbi',
          ]),
        ),
      );
}

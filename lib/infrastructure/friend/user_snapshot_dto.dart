import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/user_snapshot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_snapshot_dto.freezed.dart';
part 'user_snapshot_dto.g.dart';

@freezed
class UserSnapshotDto with _$UserSnapshotDto {
  const factory UserSnapshotDto({
    required String id,
    String? photoUrl,
    required String name,
  }) = _UserSnapshotDto;

  const UserSnapshotDto._();

  factory UserSnapshotDto.fromDomain(UserSnapshot userSnapshot) {
    return UserSnapshotDto(
      id: userSnapshot.id.getOrCrash(),
      photoUrl: userSnapshot.photoUrl,
      name: userSnapshot.name.getOrCrash(),
    );
  }

  UserSnapshot toDomain() {
    return UserSnapshot(
      id: UniqueId.fromUniqueString(id),
      photoUrl: photoUrl,
      name: Username(name),
    );
  }

  factory UserSnapshotDto.fromJson(Map<String, dynamic> json) =>
      _$UserSnapshotDtoFromJson(json);
}

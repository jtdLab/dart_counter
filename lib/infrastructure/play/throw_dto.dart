import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'throw_dto.freezed.dart';
part 'throw_dto.g.dart';

@freezed
class ThrowDto with _$ThrowDto {
  const factory ThrowDto({
    @JsonKey(ignore: true) String? id, // TODO ignore and nullable fix
    required int points,
    required int dartsThrown,
    required int dartsOnDouble,
  }) = _ThrowDto;

  const ThrowDto._();

  factory ThrowDto.fromDomain(Throw t) {
    return ThrowDto(
      id: t.id.getOrCrash(),
      points: t.points,
      dartsThrown: t.dartsThrown,
      dartsOnDouble: t.dartsThrown,
    );
  }

  Throw toDomain() {
    return Throw(
      id: UniqueId.fromUniqueString(id!),
      points: points,
      dartsThrown: dartsThrown,
      dartsOnDouble: dartsOnDouble,
    );
  }

  factory ThrowDto.fromJson(Map<String, dynamic> json) =>
      _$ThrowDtoFromJson(json);
}

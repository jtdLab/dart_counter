import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_game/dart_game.dart' as dart;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'throw_dto.freezed.dart';
part 'throw_dto.g.dart';

@freezed
class ThrowDto with _$ThrowDto {
  const factory ThrowDto({
    required int points,
    required int dartsThrown,
    required int dartsOnDouble,
  }) = _ThrowDto;

  const ThrowDto._();

  factory ThrowDto.fromDomain(Throw t) {
    return ThrowDto(
      points: t.points,
      dartsThrown: t.dartsThrown,
      dartsOnDouble: t.dartsThrown,
    );
  }

  factory ThrowDto.fromExternal(dart.Throw t) {
    return ThrowDto(
      points: t.points,
      dartsThrown: t.dartsThrown,
      dartsOnDouble: t.dartsThrown,
    );
  }

  Throw toDomain() {
    return Throw(
      points: points,
      dartsThrown: dartsThrown,
      dartsOnDouble: dartsOnDouble,
    );
  }

  factory ThrowDto.fromJson(Map<String, dynamic> json) =>
      _$ThrowDtoFromJson(json);
}

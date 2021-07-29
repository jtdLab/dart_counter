import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_game/dart_game.dart' as dart;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'dart_dto.dart';

part 'throw_dto.freezed.dart';
part 'throw_dto.g.dart';

@freezed
class ThrowDto with _$ThrowDto {
  const factory ThrowDto({
    required int points,
    required int dartsThrown,
    required int dartsOnDouble,
    List<DartDto>? darts,
  }) = _ThrowDto;

  const ThrowDto._();

  factory ThrowDto.fromDomain(Throw t) {
    return ThrowDto(
      points: t.points,
      dartsThrown: t.dartsThrown,
      dartsOnDouble: t.dartsThrown,
      darts: t.darts?.iter.map((dart) => DartDto.fromDomain(dart)).toList(),
    );
  }

  factory ThrowDto.fromExternal(dart.Throw t) {
    return ThrowDto(
      points: t.points,
      dartsThrown: t.dartsThrown,
      dartsOnDouble: t.dartsThrown,
      darts: t.darts?.map((dart) => DartDto.fromExternal(dart)).toList(),
    );
  }

  dart.Throw toExternal() {
    return dart.Throw(
      points,
      dartsThrown: dartsThrown,
      dartsOnDouble: dartsThrown,
      darts: darts?.map((dart) => dart.toExternal()).toList(),
    );
  }

  Throw toDomain() {
    return Throw(
      points: points,
      dartsThrown: dartsThrown,
      dartsOnDouble: dartsOnDouble,
      darts: KtList.from(darts?.map((dart) => dart.toDomain()) ?? []),
    );
  }

  factory ThrowDto.fromJson(Map<String, dynamic> json) =>
      _$ThrowDtoFromJson(json);
}

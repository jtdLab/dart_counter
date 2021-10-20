import 'package:dart_game/dart_game.dart' as ex;
import 'package:dart_client/dart_client.dart' as dc;
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dartz/dartz.dart';

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
      dartsOnDouble: t.dartsOnDouble,
      darts: t.darts?.iter.map((dart) => DartDto.fromDomain(dart)).toList(),
    );
  }

  factory ThrowDto.fromExternal(ex.Throw t) {
    return ThrowDto(
      points: t.points,
      dartsThrown: t.dartsThrown,
      dartsOnDouble: t.dartsOnDouble,
      darts: t.darts?.map((dart) => DartDto.fromExternal(dart)).toList(),
    );
  }

  factory ThrowDto.fromClient(dc.Throw t) {
    return ThrowDto(
      points: t.points,
      dartsThrown: t.dartsThrown,
      dartsOnDouble: t.dartsOnDouble,
      darts: t.darts?.map((dart) => DartDto.fromClient(dart)).asList(),
    );
  }

  Throw toDomain() {
    return Throw(
      points: points,
      dartsThrown: dartsThrown,
      dartsOnDouble: dartsOnDouble,
      darts: darts == null
          ? null
          : KtList.from(
              darts!.map((dart) => dart.toDomain()),
            ),
    );
  }

  ex.Throw toExternal() {
    return ex.Throw.fromData(
      pointsOrDarts: darts == null
          ? left(points)
          : right(darts!.map((dart) => dart.toExternal()).toList()),
      dartsThrown: dartsThrown,
      dartsOnDouble: dartsOnDouble,
    );
  }

  dc.Throw toClient() {
    return dc.Throw(
      points: points,
      dartsThrown: dartsThrown,
      dartsOnDouble: dartsOnDouble,
      darts: darts == null
          ? null
          : KtList.from(
              darts!.map((dart) => dart.toClient()),
            ),
    );
  }

  factory ThrowDto.fromJson(Map<String, dynamic> json) =>
      _$ThrowDtoFromJson(json);
}

import 'package:dart_counter/domain/game/leg.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:dart_counter/infrastructure/game/throw_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'leg_dto.freezed.dart';
part 'leg_dto.g.dart';

@freezed
class LegDto with _$LegDto {
  const factory LegDto({
    required int startingPoints,
    required List<ThrowDto> throws,
  }) = _LegDto;

  const LegDto._();

  factory LegDto.fromExternal(ex.Leg leg) {
    return LegDto(
      startingPoints: leg.startingPoints,
      throws: leg.throws.map((t) => ThrowDto.fromExternal(t)).toList(),
    );
  }

  Leg toDomain() {
    final external = toExternal();

    return Leg(
      throws: KtList.from(throws.map((throwDto) => throwDto.toDomain())),
      won: external.won,
      stats: LegStats(
        average: external.average ?? 0,
        checkoutPercentage: external.checkoutPercentage ?? 0,
        firstNineAverage: external.firstNineAverage ?? 0,
        firstDartAverage: external.firstDartAverage,
        secondDartAverage: external.secondDartAverage,
        thirdDartAverage: external.thirdDartAverage,
        fourtyPlus: external.fourtyPlus,
        sixtyPlus: external.sixtyPlus,
        eightyPlus: external.eightyPlus,
        hundredPlus: external.hundredPlus,
        hundredTwentyPlus: external.hundredTwentyPlus,
        hundredFourtyPlus: external.hundredFourtyPlus,
        hundredSixtyPlus: external.hundredSixtyPlus,
        hundredEighty: external.hundredEighty,
      ),
    );
  }

  ex.Leg toExternal() {
    return ex.Leg.fromData(
      startingPoints: startingPoints,
      throws: throws.map((throwDto) => throwDto.toExternal()).toList(),
    );
  }

  factory LegDto.fromJson(Map<String, dynamic> json) => _$LegDtoFromJson(json);
}

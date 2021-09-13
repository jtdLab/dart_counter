import 'package:dart_counter/domain/play/set.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:dart_counter/infrastructure/play/leg_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'set_dto.freezed.dart';
part 'set_dto.g.dart';

@freezed
class SetDto with _$SetDto {
  const factory SetDto({
    required int startingPoints,
    required List<LegDto> legs,
  }) = _SetDto;

  const SetDto._();

  factory SetDto.fromExternal(ex.Set set) {
    return SetDto(
      startingPoints: set.startingPoints,
      legs: set.legs.map((leg) => LegDto.fromExternal(leg)).toList(),
    );
  }

  Set toDomain() {
    final external = toExternal();
    return Set(
      legs: KtList.from(legs.map((legDto) => legDto.toDomain())),
      won: external.won,
      wonLegs: external.wonLegs,
      // TODO more stats from external sets e.g best leg darts Thrown etc.
      stats: SetStats(
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

  ex.Set toExternal() {
    return ex.Set.fromData(
      startingPoints: startingPoints,
      legs: legs.map((legDto) => legDto.toExternal()).toList(),
    );
  }

  factory SetDto.fromJson(Map<String, dynamic> json) => _$SetDtoFromJson(json);
}

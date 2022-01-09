import 'package:dart_counter/domain/game/set.dart';
import 'package:dart_counter/domain/game/set_stats.dart';
import 'package:dart_counter/infrastructure/game/abstract_legs_or_sets_dto.dart';
import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'set_dto.freezed.dart';
part 'set_dto.g.dart';

@freezed
class SetDto with _$SetDto implements AbstractLegsOrSetsDto {
  @Implements<AbstractLegsOrSetsDto>()
  const factory SetDto({
    required List<LegDto> legs,
  }) = _SetDto;

  const SetDto._();

  Set toDomain({
    required int startingPoints,
  }) {
    final external = toExternal(startingPoints: startingPoints);

    return Set(
      legs: KtList.from(
        legs.map((legDto) => legDto.toDomain(startingPoints: startingPoints)),
      ),
      won: external.won,
      wonLegs: external.wonLegs,
      // TODO more stats from external sets e.g best leg darts Thrown etc.
      stats: SetStats(
        average: external.average,
        checkoutPercentage: external.checkoutPercentage,
        firstNineAverage: external.firstNineAverage,
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

  factory SetDto.fromExternal(ex.Set set) {
    return SetDto(
      legs: set.legs.map((leg) => LegDto.fromExternal(leg)).toList(),
    );
  }

  ex.Set toExternal({
    required int startingPoints,
  }) {
    return ex.Set.fromData(
      startingPoints: startingPoints,
      legs: legs
          .map((legDto) => legDto.toExternal(startingPoints: startingPoints))
          .toList(),
    );
  }

  factory SetDto.fromJson(Map<String, dynamic> json) => _$SetDtoFromJson(json);
}

import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_player.dart';
import 'package:dart_counter/domain/game/leg.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/game/set.dart';
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'dartbot.freezed.dart';

@freezed
class DartBot with _$DartBot implements AbstractPlayer {
  // coverage:ignore-start
  @Implements<AbstractPlayer>()
  const factory DartBot({
    required UniqueId id,
    required Either<KtList<Leg>, KtList<Set>> legsOrSets,
    required bool won,
    required int wonLegsOrSets,
    required PlayerStats stats,
    required int targetAverage,
  }) = _DartBot;

  factory DartBot.dummy() => DartBot(
        id: UniqueId.fromUniqueString('dartBot'),
        legsOrSets: faker.randomGenerator.boolean()
            ? left(
                KtList.from(
                  faker.randomGenerator.amount((i) => Leg.dummy(), 9),
                ),
              )
            : right(
                KtList.from(
                  faker.randomGenerator.amount((i) => Set.dummy(), 9),
                ),
              ),
        won: false,
        wonLegsOrSets: 0,
        stats: PlayerStats.dummy(),
        targetAverage: faker.randomGenerator.integer(100, min: 10),
      );
  // coverage:ignore-end
}

import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/game/set.dart';
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../leg.dart';
import 'abstract_offline_player.dart';

part 'offline_player.freezed.dart';

@freezed
class OfflinePlayer with _$OfflinePlayer implements AbstractOfflinePlayer {
  @Implements<AbstractOfflinePlayer>()
  const factory OfflinePlayer({
    required UniqueId id,
    required String name,
    required Either<KtList<Leg>, KtList<Set>> legsOrSets,
    @Default(false)
        bool won,
    @Default(0)
        int wonLegsOrSets,
    @Default(
      PlayerStats(),
    )
        PlayerStats stats,
  }) = _OfflinePlayer;

  factory OfflinePlayer.dummy() => OfflinePlayer(
        id: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        name: faker.randomGenerator.element([
          'David88',
          'mrjosch',
          'SebiAbi69',
          'HoeHoe',
          'Soldier48',
          'Needs',
          'egesit',
          'AnisAbi',
        ]),
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
      );
}

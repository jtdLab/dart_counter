import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_player.dart';
import 'package:dart_counter/domain/game/leg.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/game/set.dart';
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'online_player.freezed.dart';

@freezed
class OnlinePlayer with _$OnlinePlayer implements AbstractPlayer {
  @Implements<AbstractPlayer>()
  const factory OnlinePlayer({
    required UniqueId id,
    required String name,
    String? photoUrl,
    required Either<KtList<Leg>, KtList<Set>> legsOrSets,
    required bool won,
    required int wonLegsOrSets,
    required PlayerStats stats,
  }) = _OnlinePlayer;

  factory OnlinePlayer.dummy() => OnlinePlayer(
        id: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        photoUrl: faker.randomGenerator
            .element([faker.image.image(width: 200, height: 200), null]),
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

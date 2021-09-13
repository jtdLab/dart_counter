import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/set.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'player.freezed.dart';

abstract class AbstractPlayer {
  UniqueId get id;
  String get name;
  KtList<Set> get sets;

  bool get won;
  int get wonLegsOrSets;
  PlayerStats get stats;
}

abstract class AbstractOfflinePlayer extends AbstractPlayer {}

@freezed
class OfflinePlayer with _$OfflinePlayer implements AbstractOfflinePlayer {
  @Implements(AbstractOfflinePlayer)
  const factory OfflinePlayer({
    required UniqueId id,
    required String name,
    required KtList<Set> sets,
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
        sets: KtList.from(
          faker.randomGenerator.amount((i) => Set.dummy(), 9),
        ),
        won: false,
        wonLegsOrSets: 0,
        stats: PlayerStats.dummy(),
      );
}

@freezed
class DartBot with _$DartBot implements AbstractOfflinePlayer {
  @Implements(AbstractOfflinePlayer)
  const factory DartBot({
    required UniqueId id,
    required String name,
    required KtList<Set> sets,
    @Default(false)
        bool won,
    @Default(0)
        int wonLegsOrSets,
    @Default(
      PlayerStats(),
    )
        PlayerStats stats,
  }) = _DartBot;

  factory DartBot.dummy() => DartBot(
        id: UniqueId.fromUniqueString('dartBot'),
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
        sets: KtList.from(
          faker.randomGenerator.amount((i) => Set.dummy(), 9),
        ),
        won: false,
        wonLegsOrSets: 0,
        stats: PlayerStats.dummy(),
      );
}

@freezed
class OnlinePlayer with _$OnlinePlayer implements AbstractPlayer {
  @Implements(AbstractPlayer)
  const factory OnlinePlayer({
    required UniqueId id,
    required String name,
    required KtList<Set> sets,
    @Default(false)
        bool won,
    @Default(0)
        int wonLegsOrSets,
    @Default(
      PlayerStats(),
    )
        PlayerStats stats,
  }) = _OnlinePlayer;

  factory OnlinePlayer.dummy() => OnlinePlayer(
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
        sets: KtList.from(
          faker.randomGenerator.amount((i) => Set.dummy(), 9),
        ),
        won: false,
        wonLegsOrSets: 0,
        stats: PlayerStats.dummy(),
      );
}

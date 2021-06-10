import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/set.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'player.freezed.dart';

@freezed
class Player with _$Player {
  const factory Player({
    UniqueId? id,
    String? name,
    bool? isCurrentTurn,
    bool? won,
    int? wonSets,
    int? wonLegsCurrentSet,
    int? pointsLeft,
    KtList<String>? finishRecommendation,
    int? lastPoints,
    int? dartsThrownCurrentLeg,
    Stats? stats,
    KtList<Set>? sets,
    bool? isDartBot,
  }) = _Player;

  factory Player.dummy() {
    final faker = Faker();
    return Player(
      id: UniqueId.fromUniqueString(faker.randomGenerator.string(28, min: 28)),
      name: faker.randomGenerator.element(
        [
          'David88',
          'mrjosch',
          'SebiAbi69',
          'HoeHoe',
          'Soldier48',
          'Needs',
          'egesit',
          'AnisAbi',
        ],
      ),
      isCurrentTurn: true,
      won: false,
      wonLegsCurrentSet: 0,
      pointsLeft: 261,
      lastPoints: 120,
      dartsThrownCurrentLeg: 6,
      stats: Stats.dummy(),
      sets: KtList.from([Set.dummy()]),
      isDartBot: false,
    );
  }
}

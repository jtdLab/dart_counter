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
    required UniqueId id,
    required String name,
    @Default(false)
        bool isCurrentTurn,
    @Default(false)
        bool won,
    int? wonSets,
    @Default(0)
        int wonLegsCurrentSet,
    @Default(0)
        int pointsLeft,
    KtList<String>? finishRecommendation,
    int? lastPoints,
    @Default(0)
        int dartsThrownCurrentLeg,
    @Default(
      Stats(
        average: 0.00,
        checkoutPercentage: 0.00,
        firstNineAverage: 0.00,
        fourtyPlus: 0,
        sixtyPlus: 0,
        eightyPlus: 0,
        hundredPlus: 0,
        hundredTwentyPlus: 0,
        hundredFourtyPlus: 0,
        hundredSixtyPlus: 0,
        hundredEighty: 0,
      ),
    )
        Stats stats,
    @Default(KtList.empty())
        KtList<Set> sets,
    required bool isDartBot,
    UniqueId? userId,
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

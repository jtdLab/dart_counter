import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/set.dart';
import 'package:dart_counter/domain/play/stats.dart';
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
  }) = _Player;

  factory Player.dummy() => Player(
        id: UniqueId.fromUniqueString('dummyPlayerUID'),
        name: 'DummyPlayer',
        isCurrentTurn: true,
        won: false,
        wonLegsCurrentSet: 0,
        pointsLeft: 261,
        lastPoints: 120,
        dartsThrownCurrentLeg: 6,
        stats: Stats.dummy(),
        sets: KtList.from([Set.dummy()]),
      );
}

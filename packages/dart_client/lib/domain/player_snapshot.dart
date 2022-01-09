import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'stats.dart';

part 'player_snapshot.freezed.dart';

@freezed
class PlayerSnapshot with _$PlayerSnapshot {
  const factory PlayerSnapshot({
    required String id,
    required String name,
    bool? isCurrentTurn,
    bool? won,
    int? wonSets,
    int? wonLegsCurrentSet,
    int? pointsLeft,
    KtList<String>? finishRecommendation,
    int? lastPoints,
    int? dartsThrownCurrentLeg,
    Stats? stats,
    required String userId,
  }) = _PlayerSnapshot;
}

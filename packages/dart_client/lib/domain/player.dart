import 'package:dart_client/domain/set.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'stats.dart';

part 'player.freezed.dart';

@freezed
class Player with _$Player {
  const factory Player({
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
    KtList<Set>? sets,
    required String userId,
  }) = _Player;
}

import 'package:dart_counter/infrastructure/game/player_stats_dto.dart';

import './offline/dartbot_snapshot_dto.dart';
import './offline/offline_player_snapshot_dto.dart';
import './online/online_player_snapshot_dto.dart';

export './offline/dartbot_snapshot_dto.dart';
export './offline/offline_player_snapshot_dto.dart';
export './online/online_player_snapshot_dto.dart';

/// Base class for [DartBotSnapshotDto], [OfflinePlayerSnapshotDto] and [OnlinePlayerSnapshotDto].
abstract class AbstractPlayerSnapshotDto {
  String get id;
  String? get name;
  bool? get isCurrentTurn;
  bool? get won;
  int? get wonSets;
  int? get wonLegsCurrentSet;
  int? get pointsLeft;
  List<String>? get finishRecommendation;
  int? get lastPoints;
  int? get dartsThrownCurrentLeg;
  PlayerStatsDto? get stats;
}

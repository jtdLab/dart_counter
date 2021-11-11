import 'package:dart_counter/infrastructure/game/player_stats_dto.dart';

export './offline/dartbot_snapshot_dto.dart';
export './offline/offline_player_snapshot_dto.dart';
export './online/online_player_snapshot_dto.dart';

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

abstract class AbstractOfflinePlayerSnapshotDto
    extends AbstractPlayerSnapshotDto {}
    // TODO move to offline section

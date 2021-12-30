import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/play/offline/dartbot_snapshot.dart';
import 'package:dart_counter/domain/play/offline/offline_player_snapshot.dart';
import 'package:dart_counter/domain/play/online/online_player_snapshot.dart';
import 'package:kt_dart/kt.dart';

export './offline/dartbot_snapshot.dart';
export './offline/offline_player_snapshot.dart';
export './online/online_player_snapshot.dart';

/// Base class for [OfflinePlayerSnapshot], [DartBotSnapshot] and [OnlinePlayerSnapshot].
abstract class AbstractPlayerSnapshot {
  UniqueId get id;
  String? get name;
  bool get isCurrentTurn;
  bool get won;
  int? get wonSets;
  int get wonLegsCurrentSet;
  int get pointsLeft;
  KtList<String>? get finishRecommendation;
  int? get lastPoints;
  int get dartsThrownCurrentLeg;
  PlayerStats get stats;
}

import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/leg.dart';
import 'package:dart_counter/domain/game/offline/dartbot.dart';
import 'package:dart_counter/domain/game/offline/offline_player.dart';
import 'package:dart_counter/domain/game/online/online_player.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/game/set.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

export './offline/dartbot.dart';
export './offline/offline_player.dart';
export './online/online_player.dart';

/// Base class for [OfflinePlayer], [DartBot] and [OnlinePlayer].
abstract class AbstractPlayer {
  UniqueId get id;
  Either<KtList<Leg>, KtList<Set>> get legsOrSets;

  bool get won;
  int get wonLegsOrSets;
  PlayerStats get stats;
}

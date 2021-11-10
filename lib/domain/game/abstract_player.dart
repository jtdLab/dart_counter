import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/set.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'leg.dart';

export './offline/offline_player.dart';
export './offline/dartbot.dart';
export './online/online_player.dart';

/// Base class for player of dart game.
abstract class AbstractPlayer {
  UniqueId get id;
  String get name;
  Either<KtList<Leg>, KtList<Set>> get legsOrSets;

  bool get won;
  int get wonLegsOrSets;
  PlayerStats get stats;
}

abstract class AbstractOfflinePlayer extends AbstractPlayer {}

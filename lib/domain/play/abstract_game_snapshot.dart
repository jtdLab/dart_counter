import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dart_counter/domain/play/offline/offline_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:kt_dart/kt.dart';

export './offline/offline_game_snapshot.dart';
export './online/online_game_snapshot.dart';

/// Base class for [OfflineGameSnapshot] and [OnlineGameSnapshot].
abstract class AbstractGameSnapshot {
  Status get status;
  Mode get mode;
  int get size;
  Type get type;
  int get startingPoints;
  KtList<AbstractPlayerSnapshot> get players;
  String description();
  AbstractPlayerSnapshot currentTurn();
  bool hasDartBot();
}

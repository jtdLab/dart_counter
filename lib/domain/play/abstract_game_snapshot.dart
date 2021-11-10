import 'package:kt_dart/kt.dart';

import '../game/mode.dart';
import '../game/status.dart';
import '../game/type.dart';
import 'abstract_player_snapshot.dart';

export './offline/offline_game_snapshot.dart';
export './online/online_game_snapshot.dart';

// TODO provide methods needed like hasDartBot etc.
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

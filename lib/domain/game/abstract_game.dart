import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_player.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/offline/offline_game.dart';
import 'package:dart_counter/domain/game/online/online_game.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:kt_dart/kt.dart';

export './offline/offline_game.dart';
export './online/online_game.dart';

/// Base class for [OfflineGame] and [OnlineGame].
abstract class AbstractGame {
  UniqueId get id;
  DateTime get createdAt;
  Status get status;
  Mode get mode;
  int get size;
  Type get type;
  int get startingPoints;
  KtList<AbstractPlayer> get players;
  String description();
}

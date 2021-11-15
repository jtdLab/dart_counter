import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:kt_dart/kt.dart';

import './offline/offline_game.dart';
import './online/online_game.dart';
import 'abstract_player.dart';
import 'mode.dart';
import 'status.dart';
import 'type.dart';

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

import '../abstract_player_snapshot.dart';
import 'dartbot_snapshot.dart';
import 'offline_player_snapshot.dart';

export 'dartbot_snapshot.dart';
export 'offline_player_snapshot.dart';

/// Base class for [OfflinePlayerSnapshot] and [DartBotSnapshot].
abstract class AbstractOfflinePlayerSnapshot extends AbstractPlayerSnapshot {}

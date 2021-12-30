import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';

export 'dartbot_snapshot.dart';
export 'offline_player_snapshot.dart';

/// Base class for [OfflinePlayerSnapshot] and [DartBotSnapshot].
abstract class AbstractOfflinePlayerSnapshot extends AbstractPlayerSnapshot {}

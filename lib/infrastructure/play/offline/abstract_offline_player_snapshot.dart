import '../abstract_player_snapshot_dto.dart';

export './dartbot_snapshot_dto.dart';
export './offline_player_snapshot_dto.dart';

/// Base flass for [OfflinePlayerSnapshotDto] and [DartBotSnapshotDto].
abstract class AbstractOfflinePlayerSnapshotDto
    extends AbstractPlayerSnapshotDto {}

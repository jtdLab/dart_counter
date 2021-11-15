import 'abstract_player_snapshot_dto.dart';
import './offline/offline_game_snapshot_dto.dart';
import './online/online_game_snapshot_dto.dart';

export './offline/offline_game_snapshot_dto.dart';
export './online/online_game_snapshot_dto.dart';

/// Base class for [OfflineGameSnapshotDto] and [OnlineGameSnapshotDto].
abstract class AbstractGameSnapshotDto {
  String get status;
  String get mode;
  int get size;
  String get type;
  int get startingPoints;
  List<AbstractPlayerSnapshotDto> get players;
}

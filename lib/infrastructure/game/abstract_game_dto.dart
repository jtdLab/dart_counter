import 'package:dart_counter/infrastructure/game/abstract_player_dto.dart';
import './offline/offline_game_dto.dart';
import './online/online_game_dto.dart';

export './offline/offline_game_dto.dart';
export './online/online_game_dto.dart';

/// Base class for [OfflineGameDto] and [OnlineGameDto].
abstract class AbstractGameDto {
  String get id;
  int get createdAt;
  String get status;
  String get mode;
  int get size;
  String get type;
  int get startingPoints;
  List<AbstractPlayerDto> get players;
}

import 'package:dart_counter/infrastructure/game/abstract_player_dto.dart';

export './offline/offline_game_dto.dart';
export './online/online_game_dto.dart';

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

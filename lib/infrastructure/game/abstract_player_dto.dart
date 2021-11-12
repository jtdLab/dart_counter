import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_counter/infrastructure/game/set_dto.dart';
import 'package:dartz/dartz.dart';

export './offline/offline_player_dto.dart';
export './offline/dartbot_dto.dart';
export './online/online_player_dto.dart';

abstract class AbstractPlayerDto {
  String get id;
  String get name;
  //@LegsOrSetsConverter() // TODO need this annotation ?
  Either<List<LegDto>, List<SetDto>> get legsOrSets;
}

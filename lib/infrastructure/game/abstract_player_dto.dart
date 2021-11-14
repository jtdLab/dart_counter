import 'abstract_legs_or_sets_dto.dart';
import './offline/dartbot_dto.dart';
import './offline/offline_player_dto.dart';
import './online/online_player_dto.dart';

export './offline/dartbot_dto.dart';
export './offline/offline_player_dto.dart';
export './online/online_player_dto.dart';

/// Base class for [DartBotDto], [OfflinePlayerDto] and [OnlinePlayerDto].
abstract class AbstractPlayerDto {
  String get id;
  String get name;
  List<AbstractLegsOrSetsDto> get legsOrSets;
}

import 'package:dart_counter/infrastructure/game/abstract_legs_or_sets_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'abstract_player_dto.dart';
import 'leg_dto.dart';
import 'offline/abstract_offline_player_dto.dart';
import 'set_dto.dart';

// Some custom json converters.

class AbstractLegsOrSetsConverter
    implements
        JsonConverter<List<AbstractLegsOrSetsDto>, List<Map<String, dynamic>>> {
  const AbstractLegsOrSetsConverter();

  @override
  List<AbstractLegsOrSetsDto> fromJson(
    List<Map<String, dynamic>> json,
  ) {
    try {
      return json.map((legJson) => LegDto.fromJson(legJson)).toList();
    } catch (_) {
      return json.map((setJson) => SetDto.fromJson(setJson)).toList();
    }
  }

  @override
  List<Map<String, dynamic>> toJson(
    List<AbstractLegsOrSetsDto> legsOrSets,
  ) {
    if (!(legsOrSets.every((element) => element is LegDto) ||
        legsOrSets.every((element) => element is SetDto))) {
      throw ArgumentError.value(
        legsOrSets,
        'LegsOrSets needs to contain only legs or only sets ',
      );
    }

    return legsOrSets.map(
      (legOrSet) {
        if (legOrSet is LegDto) {
          return legOrSet.toJson();
        } else {
          return (legOrSet as SetDto).toJson();
        }
      },
    ).toList();
  }
}

class AbstractOfflinePlayerDtoConverter
    implements JsonConverter<AbstractOfflinePlayerDto, Map<String, dynamic>> {
  const AbstractOfflinePlayerDtoConverter();

  @override
  AbstractOfflinePlayerDto fromJson(Map<String, dynamic> json) {
    if (json['id'] == 'dartBot') {
      return DartBotDto.fromJson(json);
    } else {
      return OfflinePlayerDto.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(
    AbstractOfflinePlayerDto abstractOfflinePlayerDto,
  ) {
    if (abstractOfflinePlayerDto is OfflinePlayerDto) {
      return abstractOfflinePlayerDto.toJson();
    } else {
      return (abstractOfflinePlayerDto as DartBotDto).toJson();
    }
  }
}

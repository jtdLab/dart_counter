import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'leg_dto.dart';
import 'abstract_player_dto.dart';
import 'set_dto.dart';

class LegsOrSetsConverter
    implements
        JsonConverter<Either<List<LegDto>, List<SetDto>>,
            Map<String, dynamic>> {
  const LegsOrSetsConverter();

  @override
  Either<List<LegDto>, List<SetDto>> fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toJson(Either<List<LegDto>, List<SetDto>> either) {
    throw UnimplementedError();
  }
}

// TODO how to detect online offline or dartBot
class AbstractPlayerDtoConverter
    implements JsonConverter<AbstractPlayerDto, Map<String, dynamic>> {
  const AbstractPlayerDtoConverter();

  @override
  AbstractPlayerDto fromJson(Map<String, dynamic> json) {
    if (json['userId'] != null) {
      return OnlinePlayerDto.fromJson(json);
    } else if (json['targetAverage'] != null) {
      return DartBotDto.fromJson(json);
    } else {
      return OfflinePlayerDto.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(AbstractPlayerDto abstractPlayerDto) {
    if (abstractPlayerDto is OfflinePlayerDto) {
      return abstractPlayerDto.toJson();
    } else if (abstractPlayerDto is DartBotDto) {
      return abstractPlayerDto.toJson();
    } else if (abstractPlayerDto is OnlinePlayerDto) {
      return abstractPlayerDto.toJson();
    } else {
      throw Error(); // TODO
    }
  }
}

// TODO how to detect dartBot
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
      AbstractOfflinePlayerDto abstractOfflinePlayerDto) {
    if (abstractOfflinePlayerDto is OfflinePlayerDto) {
      return abstractOfflinePlayerDto.toJson();
    } else if (abstractOfflinePlayerDto is DartBotDto) {
      return abstractOfflinePlayerDto.toJson();
    } else {
      throw Error(); // TODO
    }
  }
}

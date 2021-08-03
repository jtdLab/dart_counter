import 'package:dart_client/dart_client.dart' as dc;
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dart_counter/domain/play/set.dart';
import 'package:dart_counter/infrastructure/play/leg_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'set_dto.freezed.dart';
part 'set_dto.g.dart';

@freezed
class SetDto with _$SetDto {
  const factory SetDto({
    required List<LegDto> legs,
  }) = _SetDto;

  const SetDto._();

  factory SetDto.fromDomain(Set set) {
    return SetDto(
      legs: set.legs.asList().map((leg) => LegDto.fromDomain(leg)).toList(),
    );
  }

  factory SetDto.fromExternal(ex.Set set) {
    return SetDto(
      legs: set.legs.map((leg) => LegDto.fromExternal(leg)).toList(),
    );
  }

  factory SetDto.fromClient(dc.Set set) {
    return SetDto(
      legs: set.legs.map((leg) => LegDto.fromClient(leg)).asList(),
    );
  }

  Set toDomain() {
    return Set(
      legs: KtList.from(legs.map((legDto) => legDto.toDomain())),
    );
  }

  factory SetDto.fromJson(Map<String, dynamic> json) => _$SetDtoFromJson(json);
}

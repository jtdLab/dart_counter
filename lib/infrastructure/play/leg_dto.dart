import 'package:dart_counter/domain/play/leg.dart';
import 'package:dart_counter/infrastructure/play/throw_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_game/dart_game.dart' as dart;
import 'package:dart_client/dart_client.dart' as dc;
import 'package:kt_dart/kt.dart';

part 'leg_dto.freezed.dart';
part 'leg_dto.g.dart';

@freezed
class LegDto with _$LegDto {
  const factory LegDto({
    required List<ThrowDto> throws,
  }) = _LegDto;

  const LegDto._();

  factory LegDto.fromDomain(Leg leg) {
    return LegDto(
      throws: leg.throws.asList().map((t) => ThrowDto.fromDomain(t)).toList(),
    );
  }

  factory LegDto.fromExternal(dart.Leg leg) {
    return LegDto(
      throws: leg.throws.map((t) => ThrowDto.fromExternal(t)).toList(),
    );
  }

   factory LegDto.fromClient(dc.Leg leg) {
    return LegDto(
      throws: leg.throws.map((t) => ThrowDto.fromClient(t)).asList(),
    );
  }

  Leg toDomain() {
    return Leg(
      throws: KtList.from(throws.map((throwDto) => throwDto.toDomain())),
    );
  }

  factory LegDto.fromJson(Map<String, dynamic> json) => _$LegDtoFromJson(json);
}

import 'package:dart_client/domain/leg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:kt_dart/kt.dart';

import 'throw_dto.dart';

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

  Leg toDomain() {
    return Leg(
      throws: KtList.from(throws.map((throwDto) => throwDto.toDomain())),
    );
  }

  factory LegDto.fromJson(Map<String, dynamic> json) => _$LegDtoFromJson(json);
}

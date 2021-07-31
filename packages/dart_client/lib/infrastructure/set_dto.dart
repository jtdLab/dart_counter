import 'package:dart_client/domain/set.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'leg_dto.dart';

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

  Set toDomain() {
    return Set(
      legs: KtList.from(legs.map((legDto) => legDto.toDomain())),
    );
  }

  factory SetDto.fromJson(Map<String, dynamic> json) => _$SetDtoFromJson(json);
}

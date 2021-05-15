import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/leg.dart';
import 'package:dart_counter/infrastructure/play/throw_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'leg_dto.freezed.dart';
part 'leg_dto.g.dart';

@freezed
class LegDto with _$LegDto {
  const factory LegDto({
    @JsonKey(ignore: true) String? id, // TODO ignore and nullable fix
    required List<ThrowDto> throws,
  }) = _LegDto;

  const LegDto._();

  factory LegDto.fromDomain(Leg leg) {
    return LegDto(
      id: leg.id.getOrCrash(),
      throws: leg.throws.asList().map((t) => ThrowDto.fromDomain(t)).toList(),
    );
  }

  Leg toDomain() {
    return Leg(
      id: UniqueId.fromUniqueString(id!),
      throws: KtList.from(throws.map((throwDto) => throwDto.toDomain())),
    );
  }

  factory LegDto.fromJson(Map<String, dynamic> json) => _$LegDtoFromJson(json);
}

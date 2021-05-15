import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/set.dart';
import 'package:dart_counter/infrastructure/play/leg_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'set_dto.freezed.dart';
part 'set_dto.g.dart';

@freezed
class SetDto with _$SetDto {
  const factory SetDto({
    @JsonKey(ignore: true) String? id, // TODO ignore and nullable fix
    required List<LegDto> legs,
  }) = _SetDto;

  const SetDto._();

  factory SetDto.fromDomain(Set set) {
    return SetDto(
      id: set.id.getOrCrash(),
      legs: set.legs.asList().map((leg) => LegDto.fromDomain(leg)).toList(),
    );
  }

  Set toDomain() {
    return Set(
      id: UniqueId.fromUniqueString(id!),
      legs: KtList.from(legs.map((legDto) => legDto.toDomain())),
    );
  }

  factory SetDto.fromJson(Map<String, dynamic> json) => _$SetDtoFromJson(json);
}

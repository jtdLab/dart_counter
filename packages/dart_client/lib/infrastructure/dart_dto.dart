import 'package:dart_client/domain/dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dart_dto.freezed.dart';
part 'dart_dto.g.dart';

@freezed
class DartDto with _$DartDto {
  const factory DartDto({
    required String type,
    required int value,
  }) = _DartDto;

  const DartDto._();

  factory DartDto.fromDomain(Dart dart) {
    return DartDto(
      type: dart.type == DartType.s
          ? 'single'
          : dart.type == DartType.d
              ? 'double'
              : 'triple',
      value: dart.value,
    );
  }

  Dart toDomain() {
    return Dart(
      type: type == 'single'
          ? DartType.s
          : type == 'double'
              ? DartType.d
              : DartType.t,
      value: value,
    );
  }

  factory DartDto.fromJson(Map<String, dynamic> json) =>
      _$DartDtoFromJson(json);
}

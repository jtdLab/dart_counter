import 'package:dart_counter/domain/play/dart.dart';
import 'package:dart_game/dart_game.dart' as dart;
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

  factory DartDto.fromExternal(dart.Dart d) {
    return DartDto(
      type: d.type == dart.DartType.s
          ? 'single'
          : d.type == dart.DartType.d
              ? 'double'
              : 'triple',
      value: d.points,
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

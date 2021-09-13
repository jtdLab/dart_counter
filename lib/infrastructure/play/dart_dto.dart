import 'package:dart_client/dart_client.dart' as dc;
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dart_counter/domain/play/dart.dart';
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

  factory DartDto.fromExternal(ex.Dart d) {
    return DartDto(
      type: d.type == ex.DartType.s
          ? 'single'
          : d.type == ex.DartType.d
              ? 'double'
              : 'triple',
      value: d.value,
    );
  }

  factory DartDto.fromClient(dc.Dart d) {
    return DartDto(
      type: d.type == dc.DartType.s
          ? 'single'
          : d.type == dc.DartType.d
              ? 'double'
              : 'triple',
      value: d.value,
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

  ex.Dart toExternal() {
    return ex.Dart(
      type: type == 'single'
          ? ex.DartType.s
          : type == 'double'
              ? ex.DartType.d
              : ex.DartType.t,
      value: value,
    );
  }

  dc.Dart toClient() {
    return dc.Dart(
      type: type == 'single'
          ? dc.DartType.s
          : type == 'double'
              ? dc.DartType.d
              : dc.DartType.t,
      value: value,
    );
  }

  factory DartDto.fromJson(Map<String, dynamic> json) =>
      _$DartDtoFromJson(json);
}

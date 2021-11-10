import 'package:dart_client/dart_client.dart' as dc;
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dart_counter/domain/game/dart.dart';
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
      type: dart.type == DartType.single
          ? 'single'
          : dart.type == DartType.double
              ? 'double'
              : 'triple',
      value: dart.value,
    );
  }

  factory DartDto.fromExternal(ex.Dart d) {
    return DartDto(
      type: d.type == ex.DartType.single
          ? 'single'
          : d.type == ex.DartType.double
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
          ? DartType.single
          : type == 'double'
              ? DartType.double
              : DartType.triple,
      value: value,
    );
  }

  ex.Dart toExternal() {
    return ex.Dart(
      type: type == 'single'
          ? ex.DartType.single
          : type == 'double'
              ? ex.DartType.double
              : ex.DartType.triple,
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

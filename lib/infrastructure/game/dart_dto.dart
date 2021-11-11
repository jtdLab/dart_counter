import 'package:dart_client/dart_client.dart' as c;
import 'package:dart_counter/infrastructure/core/errors.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dart_counter/domain/game/dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dart_dto.freezed.dart';
part 'dart_dto.g.dart';

/// Utility methods to convert a [String] to [DartType] and vice versa.
extension DartTypeX on DartType {
  String toShortString() {
    return toString().split('.').last;
  }

  static DartType parse(String str) {
    return DartType.values.firstWhere(
      (e) => e.toString() == 'DartType.$str',
      orElse: () => throw EnumParseError<DartType>(str),
    );
  }
}

/// Utility methods to convert a [String] to [ex.DartType] and vice versa.
extension ExternalDartTypeX on ex.DartType {
  String toShortString() {
    return toString().split('.').last;
  }

  static ex.DartType parse(String str) {
    return ex.DartType.values.firstWhere(
      (e) => e.toString() == 'DartType.$str',
      orElse: () => throw EnumParseError<ex.DartType>(str),
    );
  }
}

/// Utility methods to convert a [String] to [c.DartType] and vice versa.
extension ClientDartTypeX on c.DartType {
  String toShortString() {
    return toString().split('.').last;
  }

  static c.DartType parse(String str) {
    return c.DartType.values.firstWhere(
      (e) => e.toString() == 'DartType.$str',
      orElse: () => throw EnumParseError<c.DartType>(str),
    );
  }
}

@freezed
class DartDto with _$DartDto {
  const factory DartDto({
    required String type,
    required int value,
  }) = _DartDto;

  const DartDto._();

  factory DartDto.fromDomain(Dart dart) {
    return DartDto(
      type: dart.type.toShortString(),
      value: dart.value,
    );
  }

  Dart toDomain() {
    return Dart(
      type: DartTypeX.parse(type),
      value: value,
    );
  }

  factory DartDto.fromExternal(ex.Dart dart) {
    return DartDto(
      type: dart.type.toShortString(),
      value: dart.value,
    );
  }

  ex.Dart toExternal() {
    return ex.Dart(
      type: ExternalDartTypeX.parse(type),
      value: value,
    );
  }

  factory DartDto.fromClient(c.Dart dart) {
    return DartDto(
      type: dart.type.toShortString(),
      value: dart.value,
    );
  }

  c.Dart toClient() {
    return c.Dart(
      type: ClientDartTypeX.parse(type),
      value: value,
    );
  }

  factory DartDto.fromJson(Map<String, dynamic> json) =>
      _$DartDtoFromJson(json);
}

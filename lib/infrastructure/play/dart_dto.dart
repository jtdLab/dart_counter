import 'package:dart_counter/domain/play/dart.dart';
import 'package:dart_game/dart_game.dart' as dart;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dart_dto.freezed.dart';
part 'dart_dto.g.dart';

@freezed
class DartDto with _$DartDto {
  const factory DartDto({
    required int points,
  }) = _DartDto;

  const DartDto._();

  factory DartDto.fromDomain(Dart dart) {
    return DartDto(points: dart.points);
  }

  factory DartDto.fromExternal() {
    // TODO add param
    return DartDto(
      points: 80,
    );
  }

  Dart toDomain() {
    return Dart(
      points: points,
    );
  }

  factory DartDto.fromJson(Map<String, dynamic> json) =>
      _$DartDtoFromJson(json);
}

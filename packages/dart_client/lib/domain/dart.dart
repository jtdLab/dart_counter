import 'package:freezed_annotation/freezed_annotation.dart';

part 'dart.freezed.dart';

// s = single, d = double, t = triple
enum DartType { s, d, t }

@freezed
class Dart with _$Dart {
  const factory Dart({
    required DartType type,
    required int value,
  }) = _Dart;

  const Dart._();

  int points() {
    int multiplier;
    switch (type) {
      case DartType.s:
        multiplier = 1;
        break;
      case DartType.d:
        multiplier = 2;
        break;
      default:
        multiplier = 3;
    }

    return multiplier * value;
  }
}

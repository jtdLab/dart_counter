import 'package:faker/faker.dart';
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

  factory Dart.dummy() {
    return Dart(
      type: faker.randomGenerator.element([
        DartType.s,
        DartType.d,
        DartType.t,
      ]),
      value: faker.randomGenerator.element([
            1,
            2,
            3,
            4,
            5,
            6,
            7,
            8,
            9,
            10,
            11,
            12,
            13,
            14,
            15,
            16,
            17,
            18,
            19,
            20
          ] +
          [
            1,
            2,
            3,
            4,
            5,
            6,
            7,
            8,
            9,
            10,
            11,
            12,
            13,
            14,
            15,
            16,
            17,
            18,
            19,
            20
          ].map((e) => e * 2).toList() +
          [
            1,
            2,
            3,
            4,
            5,
            6,
            7,
            8,
            9,
            10,
            11,
            12,
            13,
            14,
            15,
            16,
            17,
            18,
            19,
            20
          ].map((e) => e * 3).toList() +
          [25, 50]),
    );
  }
}

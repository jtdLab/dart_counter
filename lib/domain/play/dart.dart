import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dart.freezed.dart';

@freezed
class Dart with _$Dart {
  const factory Dart({
    required int points,
  }) = _Dart;

  factory Dart.dummy() {
    return Dart(
      points: faker.randomGenerator.element([
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

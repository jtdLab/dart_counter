part of '../dart_game.dart';

/// The type of a [Dart]
///
/// s = single, d = double, t = triple
enum DartType {
  s,
  d,
  t,
}

class Dart {
  final DartType type;
  final int value;

  /// {@template dart_default_constructor}
  /// Creates a throw with given [type] and [value].
  ///
  /// Throws [ArgumentError] if try to create invalid dart.
  /// {@endtemplate}
  Dart({
    required this.type,
    required this.value,
  }) {
    _validate();
  }

  /// {@macro dart_default_constructor}
  ///
  /// **NOTICE**: This constructor exists for naming consistency only.
  /// It redirects to default constructor.
  factory Dart.fromData({
    required DartType type,
    required int value,
  }) = Dart;

  /// Returns the points of this dart.
  ///
  /// ```dart
  /// final dart = Dart(type: DartType.triple, value: 20);
  /// dart.points == 60
  /// ```
  int get points {
    switch (type) {
      case DartType.s:
        return value;
      case DartType.d:
        return 2 * value;
      default:
        return 3 * value;
    }
  }

  /**
   * ##############################
   * ########## INTERNAL ##########
   * ##############################
   */

  /// Validates this dart.
  ///
  /// Throws an [ArgumentError] in following cases:
  /// 1. [value] is not 0-25 or 25
  /// 2. [value] is 25 and [type] is [DartType.t]
  void _validate() {
    if ((value < 0 || value > 25) ||
        (value == 21 || value == 22 || value == 23 || value == 24)) {
      throw ArgumentError.value(value, 'value', 'Value must be 1-20 or 25.');
    }

    if (value == 25 && type == DartType.t) {
      throw ArgumentError(
        'Type mustn`t be triple if value is 25.',
      );
    }
  }

  @override
  String toString() {
    final typeString = type == DartType.s
        ? 'single'
        : type == DartType.d
            ? 'double'
            : 'triple';
    return 'Dart{type: $typeString, value: $value}';
  }
}

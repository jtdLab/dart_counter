import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/infrastructure/core/errors.dart';
import 'package:dart_game/core/training/precision/mode.dart' as ex;

/// Utility methods to convert a [String] to [Mode] and vice versa.
extension ModeX on Mode {
  String toShortString() {
    return toString().split('.').last;
  }

  static Mode parse(String str) {
    return Mode.values.firstWhere(
      (e) => e.toString() == 'Mode.$str',
      orElse: () => throw EnumParseError<Mode>(str),
    );
  }
}

/// Utility methods to convert a [String] to [ex.Mode] and vice versa.
extension ExternalModeX on ex.Mode {
  String toShortString() {
    return toString().split('.').last;
  }

  static ex.Mode parse(String str) {
    return ex.Mode.values.firstWhere(
      (e) => e.toString() == 'Mode.$str',
      orElse: () => throw EnumParseError<ex.Mode>(str),
    );
  }
}

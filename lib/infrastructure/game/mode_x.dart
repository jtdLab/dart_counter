import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/infrastructure/core/infrastructure_error.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dart_client/dart_client.dart' as c;

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

/// Utility methods to convert a [String] to [c.Mode] and vice versa.
extension ClientModeX on c.Mode {
  String toShortString() {
    return toString().split('.').last;
  }

  static c.Mode parse(String str) {
    return c.Mode.values.firstWhere(
      (e) => e.toString() == 'Mode.$str',
      orElse: () => throw EnumParseError<c.Mode>(str),
    );
  }
}

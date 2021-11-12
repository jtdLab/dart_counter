import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/infrastructure/core/errors.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dart_client/dart_client.dart' as c;

/// Utility methods to convert a [String] to [Status] and vice versa.
extension StatusX on Status {
  String toShortString() {
    return toString().split('.').last;
  }

  static Status parse(String str) {
    return Status.values.firstWhere(
      (e) => e.toString() == 'Status.$str',
      orElse: () => throw EnumParseError<Status>(str),
    );
  }
}

/// Utility methods to convert a [String] to [ex.Status] and vice versa.
extension ExternalStatusX on ex.Status {
  String toShortString() {
    return toString().split('.').last;
  }

  static ex.Status parse(String str) {
    return ex.Status.values.firstWhere(
      (e) => e.toString() == 'Status.$str',
      orElse: () => throw EnumParseError<ex.Status>(str),
    );
  }
}

/// Utility methods to convert a [String] to [c.Status] and vice versa.
extension ClientStatusX on c.Status {
  String toShortString() {
    return toString().split('.').last;
  }

  static c.Status parse(String str) {
    return c.Status.values.firstWhere(
      (e) => e.toString() == 'Status.$str',
      orElse: () => throw EnumParseError<c.Status>(str),
    );
  }
}

import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/infrastructure/core/infrastructure_error.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dart_client/dart_client.dart' as c;

/// Utility methods to convert a [String] to [Type] and vice versa.
extension TypeX on Type {
  String toShortString() {
    return toString().split('.').last;
  }

  static Type parse(String str) {
    return Type.values.firstWhere(
      (e) => e.toString() == 'Type.$str',
      orElse: () => throw EnumParseError<Type>(str),
    );
  }
}

/// Utility methods to convert a [String] to [ex.Type] and vice versa.
extension ExternalTypeX on ex.Type {
  String toShortString() {
    return toString().split('.').last;
  }

  static ex.Type parse(String str) {
    return ex.Type.values.firstWhere(
      (e) => e.toString() == 'Type.$str',
      orElse: () => throw EnumParseError<ex.Type>(str),
    );
  }
}

/// Utility methods to convert a [String] to [c.Type] and vice versa.
extension ClientTypeX on c.Type {
  String toShortString() {
    return toString().split('.').last;
  }

  static c.Type parse(String str) {
    return c.Type.values.firstWhere(
      (e) => e.toString() == 'Type.$str',
      orElse: () => throw EnumParseError<c.Type>(str),
    );
  }
}

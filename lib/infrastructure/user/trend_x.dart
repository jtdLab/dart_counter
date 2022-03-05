import 'package:dart_counter/domain/user/trend.dart';
import 'package:dart_counter/infrastructure/core/infrastructure_error.dart';

/// Utility methods to convert a [String] to [Trend] and vice versa.
extension TrendX on Trend {
  String toShortString() {
    return toString().split('.').last;
  }

  static Trend parse(String str) {
    return Trend.values.firstWhere(
      (e) => e.toString() == 'Trend.$str',
      orElse: () => throw EnumParseError<Trend>(str),
    );
  }
}

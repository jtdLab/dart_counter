import 'package:dart_counter/domain/core/failures.dart';
import 'package:dart_counter/domain/core/value_objects.dart';

// TODO merge with domaine errors

/// This error indicates that an action which requires authentication was issued by an unauthenticated user.
class NotAuthenticatedError extends Error {}

/// This error indicates that the caller tried to get the value of an invalid [ValueObject].
class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(
    this.valueFailure,
  );

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecovarable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}

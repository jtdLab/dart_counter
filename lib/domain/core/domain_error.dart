import 'package:dart_counter/domain/core/value_failures.dart';
import 'package:dart_counter/domain/core/value_objects.dart';

class DomainError extends Error {
  final String msg;

  DomainError(this.msg);

  @override
  String toString() {
    return 'DomainError: $msg';
  }

  factory DomainError.gameNotRunning() => DomainError(
        'Expected status of game to be running but it was not.',
      );
}

class UnexpectedMissingValueError extends DomainError {
  UnexpectedMissingValueError()
      : super('Expected value to be available but was not.');
}

/// This error indicates that an action which requires authentication was issued by an unauthenticated user.
class NotAuthenticatedError extends DomainError {
  NotAuthenticatedError()
      : super('Expected user to be authenticated but was not.');
}

/// This error indicates that the caller tried to get the value of an invalid [ValueObject].
class UnexpectedValueError extends DomainError {
  final ValueFailure valueFailure;

  UnexpectedValueError(
    this.valueFailure,
  ) : super(
          Error.safeToString(
            'Encountered a ValueFailure at an unrecovarable point. Terminating. Failure was: $valueFailure',
          ),
        );
}

// TODO this and errors.dart same file ?

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

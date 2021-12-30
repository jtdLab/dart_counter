// TODO this and errors.dart same file ?

class DomainError extends Error {
  final String msg;

  DomainError(this.msg);

  @override
  String toString() {
    return 'DomainError: $msg';
  }
}

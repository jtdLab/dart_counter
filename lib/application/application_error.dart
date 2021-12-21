class ApplicationError extends Error {
  final String msg;

  ApplicationError(this.msg);

  @override
  String toString() {
    return 'ApplicationError: $msg';
  }
}

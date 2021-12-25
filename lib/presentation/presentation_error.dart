class PresentationError extends Error {
  final String msg;

  PresentationError(this.msg);

  @override
  String toString() {
    return 'PresentationError: $msg';
  }
}

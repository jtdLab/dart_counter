// TODO subclasses not factorys ?
// TODO is this even needed?
/// Base class for an error happening in the presentation layer.
class PresentationError extends Error {
  final String msg;

  PresentationError(this.msg);

  @override
  String toString() {
    return 'PresentationError: $msg';
  }
}

class PlatformNotSupportedError extends PresentationError {
  PlatformNotSupportedError() : super('Platform not supported.');
}

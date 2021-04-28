class PlatformNotSupportedError extends Error {}

class NoWidgetProvidedError extends Error {
  final String message;

  NoWidgetProvidedError(this.message);

  @override
  String toString() {
    return Error.safeToString(message);
  }
}
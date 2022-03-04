/// Base class for an error happening in the infrastructure layer.
class InfrastructureError extends Error {
  final String msg;

  InfrastructureError(this.msg);

  @override
  String toString() {
    return 'InfrastructureError: $msg';
  }
}

/// Error that may occur when parsing a String to a [Enum].
class EnumParseError<T extends Enum> extends InfrastructureError {
  final String notParsableString;

  EnumParseError(this.notParsableString)
      : super('Could not parse $notParsableString to enum $T');
}

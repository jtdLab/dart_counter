class ApplicationError extends Error {
  final String msg;

  ApplicationError(this.msg);

  @override
  String toString() {
    return 'ApplicationError: $msg';
  }

  factory ApplicationError.unexpectedMissingData() => ApplicationError(
        'Data not available where it is expected to be available',
      );
}

class InfrastructureError extends Error {
  final String msg;

  InfrastructureError(this.msg);

  @override
  String toString() {
    return 'InfrastructureError: $msg';
  }
}

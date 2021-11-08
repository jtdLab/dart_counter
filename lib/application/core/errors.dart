/// Indicates that the developer of a bloc didnt expect
/// an event beeing sent to the bloc when in a certain state.
class UnexpectedStateError extends Error {
  final Object event;
  final Object state;

  UnexpectedStateError({
    required this.event,
    required this.state,
  });

  @override
  String toString() {
    return 'The event: $event is not expected while the bloc is in state: $state';
  }
}

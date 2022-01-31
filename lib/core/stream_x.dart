extension StreamX<A> on Stream<A> {
  /// The first event that does not match [T] leads to this stream completing with [error].
  Stream<A> notMatchingTypeCompleteWithError<T>(Object error) => map(
        (event) {
          return event is! T ? throw error : event;
        },
      );

  /// This transformer is a shorthand for [StreamX.notMatchingTypeCompleteWithError] followed by [Stream.cast].
  ///
  /// The first event that does not match [T] leads to this stream completing with [error],
  ///
  /// the resulting [Stream] will be of Type [T].
  Stream<T> whereTypeElseCompleteWithError<T>(Object error) =>
      notMatchingTypeCompleteWithError<T>(error).cast<T>();
}

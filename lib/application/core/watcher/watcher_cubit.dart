import 'dart:async';

import 'package:bloc/bloc.dart';

/// {@template watcher_cubit}
/// A [WatcherCubit] listens to a stream of [T] and emits the same elements as the stream.
///
/// Every [WatcherCubit] requires an initial state [T] which will be the
/// state of the [WatcherCubit] before [emit] has been called.
///
/// {@endtemplate}
class WatcherCubit<T> extends Cubit<T> {
  late final StreamSubscription _subscription;

  /// {@macro watcher_cubit}
  WatcherCubit(
    T initialState,
    Stream<T> stream,
  ) : super(
          // Set initial state
          initialState,
        ) {
    // Create subscription to stream
    // For each element of stream emit the element
    _subscription = stream.listen((data) => emit(data));
  }

  @override
  Future<void> close() {
    // Cancel the subscription to stream
    _subscription.cancel();

    return super.close();
  }
}

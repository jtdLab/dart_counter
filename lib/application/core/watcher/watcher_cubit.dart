import 'dart:async';

import 'package:bloc/bloc.dart';

class WatcherCubit<T> extends Cubit<T> {
  late final StreamSubscription _subscription;

  WatcherCubit(
    T initialState,
    Stream<T> toWatch,
  ) : super(initialState) {
    _subscription = toWatch.listen((data) => emit(data));
  }

  @override
  Future<void> close() {
    _subscription.cancel();

    return super.close();
  }
}

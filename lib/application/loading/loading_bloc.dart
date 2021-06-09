import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'loading_event.dart';
part 'loading_state.dart';
part 'loading_bloc.freezed.dart';

@Singleton()
class LoadingBloc extends Bloc<LoadingEvent, LoadingState> {
  LoadingBloc() : super(const LoadingState.notLoading());

  @override
  Stream<LoadingState> mapEventToState(
    LoadingEvent event,
  ) async* {
    yield* event.map(
      startLoading: (e) async* {
        yield const LoadingState.loading();
      },
      stopLoading: (e) async* {
        yield const LoadingState.notLoading();
      },
    );
  }
}

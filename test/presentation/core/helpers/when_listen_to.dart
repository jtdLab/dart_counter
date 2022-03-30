import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Shortcut for [whenListen] with [state] beeing the initial state of [bloc]
/// 
/// and stream of [bloc] containing [state] as the single element.
void whenListenTo<State>(
  BlocBase<State> bloc,
  State state,
) =>
    whenListen(bloc, Stream.value(state), initialState: state);

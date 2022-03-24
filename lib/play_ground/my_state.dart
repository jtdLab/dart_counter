part of 'my_bloc.dart';

@freezed
class MyState with _$MyState {
  const factory MyState.listenable() = Listenable;
  const factory MyState.buildable() = Buildable;
  const factory MyState.listenAndBuildable() = ListenAndBuildable;
}

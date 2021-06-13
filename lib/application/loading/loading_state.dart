part of 'loading_bloc.dart';

@freezed
class LoadingState with _$LoadingState {
  const factory LoadingState.loading() = Loading;
  const factory LoadingState.notLoading() = NotLoading;
}

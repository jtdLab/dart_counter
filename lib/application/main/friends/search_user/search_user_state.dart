part of 'search_user_bloc.dart';

@freezed
class SearchUserState with _$SearchUserState {
  const factory SearchUserState.initial() = SearchUserInitial;
  const factory SearchUserState.loadInProgress() = SearchUserLoadInProgress;
  const factory SearchUserState.loadSuccess({
    required KtList<UserSnapshot> searchResults,
  }) = SearchUserLoadSuccess;
  const factory SearchUserState.loadFailure() = SearchUserLoadFailure;
}

part of 'search_user_bloc.dart';

@freezed
class SearchUserState with _$SearchUserState {
  const factory SearchUserState({
    required KtList<UserSnapshot> searchResults,
  }) = _SearchUserState;

  factory SearchUserState.initial() => const SearchUserState(
        searchResults: KtList.empty(),
      );
}

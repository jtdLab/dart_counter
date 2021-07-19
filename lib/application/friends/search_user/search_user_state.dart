part of 'search_user_bloc.dart';

@freezed
class SearchUserState with _$SearchUserState {
  const factory SearchUserState({
    required String searchString,
    required KtList<User> searchResults,
  }) = _SearchUserState;

  factory SearchUserState.initial() => const SearchUserState(
        searchString: '',
        searchResults: KtList.empty(),
      );
}

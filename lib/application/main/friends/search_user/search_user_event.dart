// coverage:ignore-file

part of 'search_user_bloc.dart';

@freezed
class SearchUserEvent with _$SearchUserEvent {
  const factory SearchUserEvent.searchStringChanged({
    required String newSearchString,
  }) = _SearchStringChanged;
  const factory SearchUserEvent.clearPressed() = _ClearPressed;
}

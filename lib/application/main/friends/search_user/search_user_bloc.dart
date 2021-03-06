import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/domain/friend/user_snapshot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

part 'search_user_bloc.freezed.dart';
part 'search_user_event.dart';
part 'search_user_state.dart';

@injectable
class SearchUserBloc extends Bloc<SearchUserEvent, SearchUserState> {
  final IFriendService _friendService;

  SearchUserBloc(
    this._friendService,
  ) : super(
          // Set inital state
          const SearchUserState.initial(),
        ) {
    // Register event handlers
    on<_SearchStringChanged>(
      (event, emit) async => _handleSearchStringChanged(event, emit),
      transformer: (events, mapper) => events
          .throttleTime(
            const Duration(milliseconds: 300),
          )
          .flatMap(mapper),
    );
    on<_ClearPressed>((_, emit) => _handleClearPressed(emit));
  }

  /// Handle incoming [_SearchStringChanged] event.
  Future<void> _handleSearchStringChanged(
    _SearchStringChanged event,
    Emitter<SearchUserState> emit,
  ) async {
    if (event.newSearchString.isEmpty) {
      emit(const SearchUserState.initial());
      return;
    }

    emit(const SearchUserState.loadInProgress());
    final failureOrSearchResults = await _friendService.searchUserByUsername(
      username: event.newSearchString,
    );
    failureOrSearchResults.fold(
      (failure) => emit(const SearchUserState.loadFailure()),
      (searchResults) =>
          emit(SearchUserState.loadSuccess(searchResults: searchResults)),
    );
  }

  /// Handle incoming [_ClearPressed] event.
  void _handleClearPressed(
    Emitter<SearchUserState> emit,
  ) =>
      emit(const SearchUserState.initial());

  /**
  *  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<SearchUserBloc>()) {
      getIt.resetLazySingleton<SearchUserBloc>();
    }

    return super.close();
  }
  */
}

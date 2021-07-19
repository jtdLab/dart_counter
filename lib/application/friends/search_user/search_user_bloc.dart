import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

part 'search_user_event.dart';
part 'search_user_state.dart';
part 'search_user_bloc.freezed.dart';

@lazySingleton
class SearchUserBloc extends Bloc<SearchUserEvent, SearchUserState>
    with AutoResetLazySingleton {
  final IFriendFacade _friendFacade;

  SearchUserBloc(
    this._friendFacade,
  ) : super(SearchUserState.initial());

  @override
  Stream<SearchUserState> mapEventToState(
    SearchUserEvent event,
  ) async* {
    yield* event.map(
      searchStringChanged: (event) => _mapSearchStringChangedToState(event),
      clearSearchStringPressed: (_) => _mapClearSearchStringPressedToState(),
    );
  }

  Stream<SearchUserState> _mapSearchStringChangedToState(
    SearchStringChanged event,
  ) async* {
    if (event.newSearchString.isEmpty) {
      yield SearchUserState.initial();
      return;
    }
    final failureOrSearchResults = await _friendFacade.searchUserByUsername(
      username: event.newSearchString,
    );
    yield failureOrSearchResults.fold(
      (failure) => throw Error(), // TODO
      (searchResults) => state.copyWith(searchResults: searchResults),
    );
  }

  Stream<SearchUserState> _mapClearSearchStringPressedToState() async* {
    yield SearchUserState.initial();
  }

  @override
  Stream<Transition<SearchUserEvent, SearchUserState>> transformEvents(
    Stream<SearchUserEvent> events,
    transitionFn,
  ) {
    // TODO debounces all events but only changeSearchString should be debounced
    return events
        .debounceTime(const Duration(milliseconds: 500))
        .switchMap(transitionFn);
  }
}

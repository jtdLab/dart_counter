import 'dart:async';

import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:dart_counter/domain/friend/user_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

part 'search_user_event.dart';
part 'search_user_state.dart';
part 'search_user_bloc.freezed.dart';

// TODO update to v8.0.0

@lazySingleton
class SearchUserBloc extends Bloc<SearchUserEvent, SearchUserState>
    with AutoResetLazySingleton {
  final IFriendService _friendService;

  SearchUserBloc(
    this._friendService,
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
    final failureOrSearchResults = await _friendService.searchUserByUsername(
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

  /**
    *
  @override
  Stream<Transition<SearchUserEvent, SearchUserState>> transformEvents(
    Stream<SearchUserEvent> events,
    mapper,
  ) {
    // Split into two streams, one which we will debounce
    final splitEvents = StreamSplitter.splitFrom(events, 2);

    final inputEvents = splitEvents[0]
        // filter to only include events that we want to debounce
        .where((event) => event is SearchStringChanged)
        .debounceTime(const Duration(milliseconds: 300));

    // Do reverse of filter above (note the `!` in `is!`)
    final otherEvents =
        splitEvents[1].where((event) => event is! SearchStringChanged);

    // This has debounced SearchInputChanged, plus all other events
    final finalStream = StreamGroup.merge([inputEvents, otherEvents]);

    return finalStream.switchMap(mapper);
  }
 */

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<SearchUserBloc>()) {
      getIt.resetLazySingleton<SearchUserBloc>();
    }

    return super.close();
  }
}
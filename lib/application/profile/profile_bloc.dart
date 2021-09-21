import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/core/user/user_bloc.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserBloc _userBloc;

  StreamSubscription<User>? _userSubscription;

  ProfileBloc(
    this._userBloc,
  ) : super(
          ProfileState.initial(
            user: _userBloc.state.map(
              loadInProgress: (_) => throw UnexpectedStateError(), // TODO
              loadSuccess: (success) => success.user,
              loadFailure: (_) => throw UnexpectedStateError(), // TODO
            ),
          ),
        ) {
    _userSubscription = _userBloc.stream.map((state) {
      return state.map(
        loadInProgress: (_) => throw UnexpectedStateError(), // TODO
        loadSuccess: (success) => success.user,
        loadFailure: (_) => throw UnexpectedStateError(), // TODO
      );
    }).listen((user) {
      add(ProfileEvent.userReceived(user: user));
    });
  }

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      userReceived: (event) => _mapWatchUserReceivedToState(event),
    );
  }

  Stream<ProfileState> _mapWatchUserReceivedToState(
    UserReceived event,
  ) async* {
    yield ProfileState.initial(user: event.user);
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}

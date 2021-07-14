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

  ProfileBloc(
    this._userBloc,
  ) : super(
          ProfileState(
            user: _userBloc.state.map(
              loading: (_) => throw UnexpectedStateError(),
              success: (success) => success.user,
            ),
          ),
        ) {
    _userSubscription = _userBloc.stream.map((state) {
      return state.map(
        loading: (_) => throw UnexpectedStateError(),
        success: (success) => success.user,
      );
    }).listen((user) {
      add(ProfileEvent.userReceived(user: user));
    });
  }

  StreamSubscription<User>? _userSubscription;

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
    yield ProfileState(user: event.user);
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}

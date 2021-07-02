import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IUserFacade _userFacade;

  ProfileBloc(this._userFacade)
      : super(
          ProfileState(
            user: _userFacade
                .watchCurrentUser()
                .valueWrapper! // TODO
                .value
                .fold(
                  (failure) => throw Error(), // TODO
                  (user) => user,
                ),
          ),
        );

  StreamSubscription<Either<UserFailure, User>>? _userStreamSubscription;

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    event.map(
      watchStarted: (_) => _mapWatchStartedToState(),
      userReceived: (event) => _mapWatchUserReceivedToState(event),
    );
  }

  Stream<ProfileState> _mapWatchStartedToState() async* {
    _userStreamSubscription =
        _userFacade.watchCurrentUser().listen((failureOrUser) {
      failureOrUser.fold(
        (failure) => throw Error(), // TODO
        (user) => add(
          ProfileEvent.userReceived(
            user: user,
          ),
        ),
      );
    });
  }

  Stream<ProfileState> _mapWatchUserReceivedToState(UserReceived event) async* {
    yield ProfileState(user: event.user);
  }

  @override
  Future<void> close() {
    _userStreamSubscription?.cancel();
    return super.close();
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserFacade _userFacade;

  UserBloc(this._userFacade) : super(const UserState.loadInProgress());

  StreamSubscription<Either<UserFailure, User>>? _userStreamSubscription;

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToEvent(),
      userReceived: (event) => _mapUserReceivedToEvent(event),
      failureReceived: (_) => _mapFailureReceivedToEvent(),
    );
  }

  Stream<UserState> _mapWatchStartedToEvent() async* {
    _userFacade.watchCurrentUser().listen((failureOrUser) {
      failureOrUser.fold(
        (failure) => add(const UserEvent.failureReceived()),
        (user) => add(UserEvent.userReceived(user: user)),
      );
    });
  }

  Stream<UserState> _mapUserReceivedToEvent(UserReceived event) async* {
    yield UserState.loadSuccess(
      user: event.user,
    );
  }

  Stream<UserState> _mapFailureReceivedToEvent() async* {
    yield const UserState.loadFailure();
  }

  @override
  Future<void> close() {
    _userStreamSubscription?.cancel();
    return super.close();
  }
}

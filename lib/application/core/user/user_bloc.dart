import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@lazySingleton
class UserBloc extends Bloc<UserEvent, UserState> with AutoResetLazySingleton {
  final IUserFacade _userFacade;

  UserBloc(this._userFacade)
      : super(
          const UserState.loading(),
        );

  StreamSubscription<Either<UserFailure, User>>? _userStreamSubscription;

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToState(),
      userReceived: (event) => _mapUserReceivedToState(event),
      failureReceived: (event) => _mapFailureReceivedToState(event),
    );
  }

  Stream<UserState> _mapWatchStartedToState() async* {
    _userStreamSubscription =
        _userFacade.watchCurrentUser().listen((failureOrUser) {
      failureOrUser.fold(
        (failure) => add(
          UserEvent.failureReceived(
            failure: failure,
          ),
        ),
        (user) => add(
          UserEvent.userReceived(
            user: user,
          ),
        ),
      );
    });
  }

  Stream<UserState> _mapUserReceivedToState(
    UserReceived event,
  ) async* {
    yield UserState.success(
      user: event.user,
    );
  }

  Stream<UserState> _mapFailureReceivedToState(
    FailureReceived event,
  ) async* {
    // TODO implement
    // switch over failure types
  }

  @override
  Future<void> close() {
    _userStreamSubscription?.cancel();
    return super.close();
  }
}

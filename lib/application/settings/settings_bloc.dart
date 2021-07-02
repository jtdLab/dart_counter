import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final IUserFacade _userFacade;

  SettingsBloc(this._userFacade)
      : super(
          SettingsState(
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
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    event.map(
      watchStarted: (_) => _mapWatchStartedToState(),
      userReceived: (event) => _mapWatchUserReceivedToState(event),
    );
  }

  Stream<SettingsState> _mapWatchStartedToState() async* {
    _userStreamSubscription =
        _userFacade.watchCurrentUser().listen((failureOrUser) {
      failureOrUser.fold(
        (failure) => throw Error(), // TODO
        (user) => add(
          SettingsEvent.userReceived(
            user: user,
          ),
        ),
      );
    });
  }

  Stream<SettingsState> _mapWatchUserReceivedToState(
      UserReceived event) async* {
    yield SettingsState(user: event.user);
  }

  @override
  Future<void> close() {
    _userStreamSubscription?.cancel();
    return super.close();
  }
}

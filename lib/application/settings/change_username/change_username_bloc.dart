import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_username_event.dart';
part 'change_username_state.dart';
part 'change_username_bloc.freezed.dart';

@lazySingleton
class ChangeUsernameBloc extends Bloc<ChangeUsernameEvent, ChangeUsernameState>
    with AutoResetLazySingleton {
  final IUserFacade _userFacade;

  ChangeUsernameBloc(
    this._userFacade,
  ) : super(
          ChangeUsernameState.initial(),
        );

  @override
  Stream<ChangeUsernameState> mapEventToState(
    ChangeUsernameEvent event,
  ) async* {
    yield* event.map(
      newUsernameChanged: (event) => _mapNewUsernameChangedToState(event),
      confirmPressed: (_) => _mapConfirmPressedToState(),
    );
  }

  Stream<ChangeUsernameState> _mapNewUsernameChangedToState(
    NewUsernameChanged event,
  ) async* {
    yield state.copyWith(newUsername: Username(event.newUsernameString));
  }

  // TODO more granular error handling
  Stream<ChangeUsernameState> _mapConfirmPressedToState() async* {
    UserFailure? userFailure;
    final isNewUsernameValid = state.newUsername.isValid();
    if (isNewUsernameValid) {
      yield state.copyWith(isSubmitting: true);
      userFailure = (await _userFacade.updateUsername(
        newUsername: state.newUsername,
      ))
          .fold(
        (failure) => failure,
        (_) => null,
      );
    } else {
      userFailure = const UserFailure.invalidUsername();
    }
    yield state.copyWith(
      showErrorMessages: true,
      isSubmitting: false,
      successful: userFailure == null,
      userFailure: userFailure,
    );
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<ChangeUsernameBloc>()) {
      getIt.resetLazySingleton<ChangeUsernameBloc>();
    }

    return super.close();
  }
}

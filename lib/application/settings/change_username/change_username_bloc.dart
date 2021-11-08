import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_username_bloc.freezed.dart';
part 'change_username_event.dart';
part 'change_username_state.dart';

@lazySingleton
class ChangeUsernameBloc extends Bloc<ChangeUsernameEvent, ChangeUsernameState>
    with AutoResetLazySingleton {
  final IUserFacade _userFacade;

  ChangeUsernameBloc(
    this._userFacade,
  ) : super(
          ChangeUsernameState.initial(
            username: Username.empty(),
            showErrorMessages: false,
          ),
        ) {
    on<UsernameChanged>(_mapUsernameChangedToState);
    on<ConfirmPressed>(_mapConfirmPressedToState);
  }

  void _mapUsernameChangedToState(
    UsernameChanged event,
    Emitter<ChangeUsernameState> emit,
  ) {
    final username = event.newUsername;

    state.maybeMap(
      initial: (initial) {
        emit(initial.copyWith(username: Username(username)));
      },
      submitFailure: (_) {
        emit(
          ChangeUsernameState.initial(
            username: Username(username),
            showErrorMessages: true,
          ),
        );
      },
      orElse: () => throw UnexpectedStateError(event: event, state: state),
    );
  }

  // TODO more granular error handling
  Future<void> _mapConfirmPressedToState(
    ConfirmPressed event,
    Emitter<ChangeUsernameState> emit,
  ) async {
    await state.maybeMap(
      initial: (initial) async {
        UserFailure? userFailure;
        final username = initial.username;

        if (username.isValid()) {
          emit(const ChangeUsernameSubmitInProgress());

          await Future.delayed(const Duration(seconds: 1));
          userFailure = (await _userFacade.updateUsername(
            newUsername: username,
          ))
              .fold(
            (failure) => failure,
            (_) => null,
          );
        } else {
          userFailure = const UserFailure.invalidUsername();
        }

        if (userFailure == null) {
          emit(const ChangeUsernameSubmitSuccess());
        } else {
          emit(ChangeUsernameSubmitFailure(userFailure: userFailure));
        }
      },
      orElse: () => throw UnexpectedStateError(event: event, state: state),
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

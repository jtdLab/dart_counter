import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
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
  final IUserService _userService;

  ChangeUsernameBloc(
    this._userService,
  ) : super(
          ChangeUsernameState.initial(
            username: Username.empty(),
            showErrorMessages: false,
          ),
        ) {
    on<_UsernameChanged>(_mapUsernameChangedToState);
    on<_ConfirmPressed>(_mapConfirmPressedToState);
  }

  void _mapUsernameChangedToState(
    _UsernameChanged event,
    Emitter<ChangeUsernameState> emit,
  ) {
    final username = event.newUsername;

    state.mapOrNull(
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
    );
  }

  Future<void> _mapConfirmPressedToState(
    _ConfirmPressed event,
    Emitter<ChangeUsernameState> emit,
  ) async {
    await state.mapOrNull(
      initial: (initial) async {
        UserFailure? userFailure;
        final username = initial.username;

        if (username.isValid()) {
          emit(const ChangeUsernameSubmitInProgress());

          await Future.delayed(const Duration(seconds: 1));
          userFailure = (await _userService.updateUsername(
            newUsername: username,
          ))
              .fold(
            (userFailure) => userFailure,
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

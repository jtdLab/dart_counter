import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_username_bloc.freezed.dart';
part 'change_username_event.dart';
part 'change_username_state.dart';

@injectable
class ChangeUsernameBloc
    extends Bloc<ChangeUsernameEvent, ChangeUsernameState> {
  final IUserService _userService;

  ChangeUsernameBloc(
    this._userService,
  ) : super(
          // Set initial state
          ChangeUsernameState.initial(
            newUsername: Username.empty(),
            showErrorMessages: false,
          ),
        ) {
    // Register event handlers
    on<_NewUsernameChanged>(_handleUsernameChanged);
    on<_ConfirmPressed>(_handleConfirmPressed);
  }

  /// Returns instance registered inside getIt.
  factory ChangeUsernameBloc.getIt() => getIt<ChangeUsernameBloc>();

  /// Handle incoming [_NewUsernameChanged] event.
  void _handleUsernameChanged(
    _NewUsernameChanged event,
    Emitter<ChangeUsernameState> emit,
  ) {
    final username = event.newNewUsername;

    state.mapOrNull(
      initial: (initial) {
        emit(initial.copyWith(newUsername: Username(username)));
      },
      submitFailure: (_) {
        emit(
          ChangeUsernameState.initial(
            newUsername: Username(username),
            showErrorMessages: true,
          ),
        );
      },
    );
  }

  /// Handle incoming [_ConfirmPressed] event.
  Future<void> _handleConfirmPressed(
    _ConfirmPressed event,
    Emitter<ChangeUsernameState> emit,
  ) async {
    await state.mapOrNull(
      initial: (initial) async {
        UserFailure? userFailure;
        final username = initial.newUsername;

        if (username.isValid()) {
          emit(const ChangeUsernameState.submitInProgress());

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
          emit(const ChangeUsernameState.submitSuccess());
        } else {
          emit(ChangeUsernameState.submitFailure(userFailure: userFailure));
        }
      },
    );
  }

  /**
  *  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<ChangeUsernameBloc>()) {
      getIt.resetLazySingleton<ChangeUsernameBloc>();
    }

    return super.close();
  }
  */
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

// TODO maybe provide user in seperate bloc and remove this bloc

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IUserService _userService;

  ProfileBloc(
    this._userService,
  ) : super(
          // Set initial state
          ProfileState.initial(
            user: _userService.getUser().getOrElse(
                  () => throw ApplicationError.unexpectedMissingUser(),
                ),
            careerStatsAll: _userService
                .getUser()
                .getOrElse(
                  () => throw ApplicationError.unexpectedMissingUser(),
                )
                .profile
                .careerStatsOnline
                .merge(
                  _userService
                      .getUser()
                      .getOrElse(
                        () => throw ApplicationError.unexpectedMissingUser(),
                      )
                      .careerStatsOffline,
                ),
          ),
        ) {
    // Register event handlers
    on<_Started>(
      (_, emit) async => _handleStarted(emit),
      transformer: restartable(), // TODO test
    );
  }

  /// Handle incoming [_Started] event.
  Future<void> _handleStarted(
    Emitter<ProfileState> emit,
  ) async {
    // TODO test if cancels on first error
    await emit.forEach(
      _userService.watchUser(),
      onData: (Either<UserFailure, User> failureOrUser) {
        return failureOrUser.fold(
          (failure) => throw ApplicationError
              .unexpectedMissingUser(), // TODO this is no dev error
          (user) => ProfileState.initial(
            user: user,
            careerStatsAll:
                user.profile.careerStatsOnline.merge(user.careerStatsOffline),
          ),
        );
      },
    );
  }

  /**
  *  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<ProfileBloc>()) {
      getIt.resetLazySingleton<ProfileBloc>();
    }

    return super.close();
  }
  */
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/application/authenticated/core/user/user_cubit.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

// THIS Bloc is not rly needed atm becaus it only listens to the user cubit and merges some careerstats
// TODO maybe provide user in seperate bloc and remove this bloc

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserCubit _userCubit;

  ProfileBloc(
    this._userCubit,
  ) : super(
          // Set initial state
          ProfileState.initial(
            careerStatsAll: _userCubit.state.user.profile.careerStatsOnline
                .merge(_userCubit.state.user.careerStatsOffline),
          ),
        ) {
    // Register event handlers
    on<_Started>(
      (_, emit) async => _handleStarted(emit),
      transformer: restartable(), // TODO test
    );
  }

  /// Returns instance registered inside getIt.
  factory ProfileBloc.getIt(
    UserCubit userCubit,
  ) =>
      getIt<ProfileBloc>(param1: [userCubit]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `UserCubit`
  @factoryMethod
  factory ProfileBloc.injectable(
    @factoryParam List<Object> otherDependencies,
  ) =>
      ProfileBloc(
        otherDependencies[0] as UserCubit,
      );

  /// Handle incoming [_Started] event.
  Future<void> _handleStarted(
    Emitter<ProfileState> emit,
  ) async {
    // TODO test if cancels on first error
    await emit.forEach<UserState>(
      _userCubit.stream,
      onData: (userState) {
        final user = userState.user;
        return ProfileState.initial(
          careerStatsAll:
              user.profile.careerStatsOnline.merge(user.careerStatsOffline),
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

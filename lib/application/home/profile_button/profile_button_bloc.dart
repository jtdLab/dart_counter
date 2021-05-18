import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_button_event.dart';
part 'profile_button_state.dart';
part 'profile_button_bloc.freezed.dart';

@injectable
class ProfileButtonBloc extends Bloc<ProfileButtonEvent, ProfileButtonState> {
  final IUserFacade _userFacade;

  ProfileButtonBloc(this._userFacade)
      : super(const ProfileButtonState.noData());

  StreamSubscription<Either<UserFailure, User>>? _userStreamSubscription;

  @override
  Stream<ProfileButtonState> mapEventToState(
    ProfileButtonEvent event,
  ) async* {
    yield* event.map(
      watchDataStarted: (e) async* {
        await _userStreamSubscription?.cancel();
        _userStreamSubscription = _userFacade.watchCurrentUser().listen(
              (failureOrUser) =>
                  add(ProfileButtonEvent.dataReceived(failureOrUser)),
            );
      },
      dataReceived: (e) async* {
        yield e.failureOrUser.fold(
          (f) => const ProfileButtonState.noData(),
          (user) => ProfileButtonState.data(
            photoUrl: user.profile.photoUrl,
            username: user.profile.username.getOrCrash(),
            average: user.careerStatsOnline.average,
            checkoutPercentage: user.careerStatsOnline.checkoutPercentage,
            wins: user.careerStatsOnline.wins,
            defeats: user.careerStatsOnline.defeats,
          ),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _userStreamSubscription?.cancel();
    return super.close();
  }
}

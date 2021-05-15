import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
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

  @override
  Stream<ProfileButtonState> mapEventToState(
    ProfileButtonEvent event,
  ) async* {
    yield* event.map(
      loadDataRequested: (_) async* {
        final userFailureOrUser = await _userFacade.readCurrentUser();
        userFailureOrUser.fold(
          (userFailure) async* {
            yield const ProfileButtonState.noData();
          },
          (user) async* {
            yield ProfileButtonState.data(
              photoUrl: user.profile.photoUrl,
              username: user.profile.username.getOrCrash(),
              average: user.careerStatsOnline.average,
              checkoutPercentage: user.careerStatsOnline.checkoutPercentage,
              wins: user.careerStatsOnline.wins,
              defeats: user.careerStatsOnline.defeats,
            );
          },
        );
      },
    );
  }
}

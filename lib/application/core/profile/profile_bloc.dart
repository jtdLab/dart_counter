import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IUserFacade _userFacade;

  ProfileBloc(this._userFacade) : super(const ProfileState.noData());

  StreamSubscription<Either<UserFailure, User>>? _userStreamSubscription;

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      watchDataStarted: (e) async* {
        _userStreamSubscription = _userFacade.watchCurrentUser().listen(
              (failureOrUser) => add(ProfileEvent.dataReceived(failureOrUser)),
            );
      },
      dataReceived: (e) async* {
        yield e.failureOrUser.fold(
          (f) => const ProfileState.noData(),
          (user) => ProfileState.data(
            photoUrl: user.profile.photoUrl,
            username: user.profile.username.getOrCrash(),
            average: user.careerStatsOnline.average,
            averageTrend: user.careerStatsOnline.averageTrend,
            checkoutPercentage: user.careerStatsOnline.checkoutPercentage,
            checkoutPercentageTrend: user.careerStatsOnline.checkoutPercentageTrend,
            firstNine: user.careerStatsOnline.firstNine,
            firstNineTrend: user.careerStatsOnline.firstNineTrend,
            games: user.careerStatsOnline.games,
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

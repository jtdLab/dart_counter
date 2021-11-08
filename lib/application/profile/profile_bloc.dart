import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/data_watcher/data_watcher_bloc.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@lazySingleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState>
    with AutoResetLazySingleton {
  final DataWatcherBloc _dataWatcherBloc;

  StreamSubscription? _dataWatcherSubscription;

  ProfileBloc(
    this._dataWatcherBloc,
  ) : super(
          _dataWatcherBloc.state.maybeMap(
            loadSuccess: (loadSuccess) => ProfileState.initial(
              user: loadSuccess.user,
              careerStatsAll: _calcCareerStatsAll(
                  careerStatsOnline: loadSuccess.user.profile.careerStatsOnline,
                  careerStatsOffline: loadSuccess.user.careerStatsOffline),
            ),
            orElse: () => throw Error(), // TODO name better
          ),
        ) {
    _dataWatcherSubscription =
        _dataWatcherBloc.stream.listen((dataWatcherState) {
      if (dataWatcherState is DataWatcherLoadSuccess) {
        add(
          ProfileEvent.userReceived(
            user: dataWatcherState.user,
          ),
        );
      }
    });
  }

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      userReceived: (event) => _mapWatchUserReceivedToState(event),
    );
  }

  Stream<ProfileState> _mapWatchUserReceivedToState(
    UserReceived event,
  ) async* {
    final user = event.user;
    yield ProfileState.initial(
      user: user,
      careerStatsAll: _calcCareerStatsAll(
        careerStatsOnline: user.profile.careerStatsOnline,
        careerStatsOffline: user.careerStatsOffline,
      ),
    );
  }

  static CareerStats _calcCareerStatsAll({
    required CareerStats careerStatsOnline,
    required CareerStats careerStatsOffline,
  }) {
    final onlineGames = careerStatsOnline.games;
    final offlineGames = careerStatsOffline.games;
    final allGames = onlineGames + offlineGames;

    if (allGames == 0) {
      return const CareerStats(
        average: 0,
        averageTrend: Trend.none,
        checkoutPercentage: 0,
        checkoutPercentageTrend: Trend.none,
        firstNine: 0,
        firstNineTrend: Trend.none,
        games: 0,
        wins: 0,
        defeats: 0,
      );
    }

    return CareerStats(
      average: (careerStatsOnline.average * onlineGames +
              careerStatsOffline.average * offlineGames) /
          allGames,
      averageTrend: Trend.none,
      checkoutPercentage: (careerStatsOnline.checkoutPercentage * onlineGames +
              careerStatsOffline.checkoutPercentage * offlineGames) /
          allGames,
      checkoutPercentageTrend: Trend.none,
      firstNine: (careerStatsOnline.firstNine * onlineGames +
              careerStatsOffline.firstNine * offlineGames) /
          allGames,
      firstNineTrend: Trend.none,
      games: allGames,
      wins: careerStatsOnline.wins + careerStatsOffline.wins,
      defeats: careerStatsOnline.defeats + careerStatsOffline.defeats,
    );
  }

  @override
  Future<void> close() {
    _dataWatcherSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<ProfileBloc>()) {
      getIt.resetLazySingleton<ProfileBloc>();
    }

    return super.close();
  }
}

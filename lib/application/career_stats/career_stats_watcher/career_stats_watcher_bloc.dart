import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/careerStats/career_stats.dart';
import 'package:dart_counter/domain/careerStats/career_stats_failure.dart';
import 'package:dart_counter/domain/careerStats/i_career_stats_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'career_stats_watcher_event.dart';
part 'career_stats_watcher_state.dart';
part 'career_stats_watcher_bloc.freezed.dart';

@injectable
class CareerStatsWatcherBloc
    extends Bloc<CareerStatsWatcherEvent, CareerStatsWatcherState> {
  final ICareerStatsRepository _careerStatsRepository;

  CareerStatsWatcherBloc(this._careerStatsRepository)
      : super(const CareerStatsWatcherState.initial());

  @override
  Stream<CareerStatsWatcherState> mapEventToState(
    CareerStatsWatcherEvent event,
  ) async* {
    yield* event.map(
      load: (e) async* {
        final careerStatsFailureOrCareerStats =
            await _careerStatsRepository.readOnline();
        yield careerStatsFailureOrCareerStats.fold(
          (careerStatsFailure) =>
              CareerStatsWatcherState.loadFailure(careerStatsFailure),
          (careerStats) => CareerStatsWatcherState.loadSuccess(careerStats),
        );
      },
    );
  }
}

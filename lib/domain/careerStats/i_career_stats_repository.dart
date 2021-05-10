import 'package:dart_counter/domain/careerStats/career_stats.dart';
import 'package:dart_counter/domain/careerStats/career_stats_failure.dart';
import 'package:dartz/dartz.dart';

abstract class ICareerStatsRepository {
  Future<Either<CareerStatsFailure, CareerStats>> readOffline();
  Future<Either<CareerStatsFailure, CareerStats>> readOnline();
}

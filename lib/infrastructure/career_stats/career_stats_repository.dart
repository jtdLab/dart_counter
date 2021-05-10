import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/careerStats/career_stats.dart';
import 'package:dart_counter/domain/careerStats/career_stats_failure.dart';
import 'package:dart_counter/domain/careerStats/i_career_stats_repository.dart';
import 'package:dart_counter/infrastructure/auth/user_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: ICareerStatsRepository)
class CareerStatsRepository implements ICareerStatsRepository {
  final FirebaseFirestore _firestore;

  CareerStatsRepository(this._firestore);

  @override
  Future<Either<CareerStatsFailure, CareerStats>> readOffline() async {
    try {
      final userDoc = await _firestore.userDocument();
      final data = (await userDoc.get()).data();

      if (data == null) return left(const CareerStatsFailure.unableToRead());

      return right(CareerStatsDto.fromJson(data['careerStatsOffline'] as Map<String, dynamic>).toDomain());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const CareerStatsFailure.insufficientPermission());
      } else {
        return left(const CareerStatsFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<CareerStatsFailure, CareerStats>> readOnline() async {
    try {
      final userDoc = await _firestore.userDocument();
      final data = (await userDoc.get()).data();

      if (data == null) return left(const CareerStatsFailure.unableToRead());

      return right(CareerStatsDto.fromJson(data['careerStatsOnline'] as Map<String, dynamic>).toDomain());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const CareerStatsFailure.insufficientPermission());
      } else {
        return left(const CareerStatsFailure.unexpected());
      }
    }
  }
}

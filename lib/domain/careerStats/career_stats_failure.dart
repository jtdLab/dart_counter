import 'package:freezed_annotation/freezed_annotation.dart';

part 'career_stats_failure.freezed.dart';

@freezed
class CareerStatsFailure with _$CareerStatsFailure {
  const factory CareerStatsFailure.unexpected() = _Unexpected;
  const factory CareerStatsFailure.insufficientPermission() = _InsufficientPermission;
  const factory CareerStatsFailure.unableToUpdate() = _UnableToUpdate;
  const factory CareerStatsFailure.unableToRead() = _UnableToRead;
}

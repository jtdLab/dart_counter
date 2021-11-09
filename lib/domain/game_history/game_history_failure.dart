import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_history_failure.freezed.dart';

/// All failures of the game history domain.
@freezed
class GameHistoryFailure with _$GameHistoryFailure {
  const factory GameHistoryFailure.unexpected() = _Unexpected;
  const factory GameHistoryFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory GameHistoryFailure.unableToRead() = _UnableToRead;
}

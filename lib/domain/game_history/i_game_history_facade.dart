import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_history/game_history_failure.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/core/errors.dart';

/// Domain interface for all actions related to the game history of the app-user and other users.
abstract class IGameHistoryFacade {
  /// Fetches the offline game history of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<GameHistoryFailure, List10<OfflineGame>>> fetchGameHistoryOffline();

  /// Fetches the online game history of the user with [uid].
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<GameHistoryFailure, List10<OnlineGame>>> fetchGameHistoryOnline({
    required String uid,
  });
}

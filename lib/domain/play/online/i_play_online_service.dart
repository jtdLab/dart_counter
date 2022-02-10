import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/abstract_i_play_service.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dartz/dartz.dart';

/// Domain service for all actions related playing an online game
/// hosted on a server against other players.
abstract class IPlayOnlineService extends AbstractIPlayService {
  @override
  Stream<OnlineGameSnapshot> watchGame();


  /// Creates a new game.
  Future<Either<PlayFailure, OnlineGameSnapshot>> createGame();

  /// Joins the game with [gameId].
  Future<Either<PlayFailure, OnlineGameSnapshot>> joinGame({
    required UniqueId gameId,
  });
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/game_history/game_history_failure.dart';
import 'package:dart_counter/domain/game_history/i_game_history_service.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/infrastructure/game/abstract_game_dto.dart';
import 'package:dart_counter/infrastructure/game/online/online_player_dto.dart';
import 'package:dart_counter/core/logger.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IGameHistoryService)
class GameHistoryService implements IGameHistoryService {
  final FirebaseFirestore _firestore;
  final IFriendService _friendService;

  GameHistoryService(
    this._firestore,
    this._friendService,
  );

  @override
  Future<Either<GameHistoryFailure, List10<OfflineGame>>>
      getGameHistoryOffline() async {
    // the reference to the offline game history collection
    // of the currently authenticated user
    final collection = _firestore.gameHistoryOfflineCollection();

    // fetch offline game history
    final querySnapshot = await collection.get();

    // when offline game history contains 0 games
    if (querySnapshot.size == 0) {
      // return empty list
      return right(List10.empty());
    }

    try {
      // when offline game history contains at least 1 game
      // the output variable wich will contain all offline games
      // after they are parsed from json
      final games = <OfflineGame>[];
      // for each game
      for (final doc in querySnapshot.docs) {
        // parse the json
        final json = (doc.data() ?? {}) as Map<String, dynamic>;

        json.addAll({
          'id': doc.id,
        });

        // to a offline game domain object and add to the output variable
        games.add(OfflineGameDto.fromJson(json).toDomain());
      }

      // return the offline games
      return right(List10(games.toImmutableList()));
      // when error occured
    } catch (e) {
      // log the error
      logger.e(e);
      // return unexpected failure
      return left(const GameHistoryFailure.unexpected()); // TODO name better
    }
  }

  @override
  Future<Either<GameHistoryFailure, List10<OnlineGame>>> getGameHistoryOnline({
    required String uid,
  }) async {
    // the reference to the online game history collection of the user with uid
    final collection = _firestore.gameHistoryOnlineCollection(uid: uid);

    // fetch online game history
    final querySnapshot = await collection.get();

    // when offline game history contains 0 games
    if (querySnapshot.size == 0) {
      // return empty list
      return right(List10.empty());
    }

    try {
      // when online game history contains at least 1 game
      // the output variable wich will contain all online games after
      // they are parsed from json
      final games = <OnlineGame>[];
      // for each game
      for (final doc in querySnapshot.docs) {
        // parse the json
        final json = (doc.data() ?? {}) as Map<String, dynamic>;

        final id = doc.id;

        json.addAll({
          'id': id,
        });

        // to a offline game dto
        final dto = OnlineGameDto.fromJson(json);

        // temporary variable which will hold all updated players of the dto
        final players = <OnlinePlayerDto>[];
        // for each player of the dto
        for (final player in dto.players) {
          // TODO could be cleaner ?
          // download the photUrl and update the players photoUrl
          final failureOrUserSnapshot =
              await _friendService.getUserById(id: player.id);

          players.add(
            player.copyWith(
              photoUrl: failureOrUserSnapshot.fold(
                (failure) => null,
                (userSnapshot) => userSnapshot.photoUrl,
              ),
            ),
          );
        }

        // parse the dto to a domain object and add it to the output variable
        games.add(dto.copyWith(players: players).toDomain());
      }

      // return the online games
      return right(List10(games.toImmutableList()));
    } catch (e) {
      // log the error
      logger.e(e);
      // return unexpected failure
      return left(const GameHistoryFailure.unexpected()); // TODO name better
    }
  }
}

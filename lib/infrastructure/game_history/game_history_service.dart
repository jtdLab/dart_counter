import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/domain/game_history/game_history_failure.dart';
import 'package:dart_counter/domain/game_history/i_game_history_service.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/infrastructure/friend/user_snapshot_dto.dart';
import 'package:dart_counter/infrastructure/game/abstract_game_dto.dart';
import 'package:dart_counter/infrastructure/game/online/online_player_dto.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IGameHistoryService)
class GameHistoryService implements IGameHistoryService {
  final FirebaseFirestore _firestore;
  final IUserService _userService; // TODO needed?
  final IFriendService _friendService;

  GameHistoryService(
    this._firestore,
    this._userService,
    this._friendService,
  );

  @override
  Future<Either<GameHistoryFailure, List10<OfflineGame>>>
      fetchGameHistoryOffline() async {
    try {
      final collection = _firestore.gameHistoryOfflineCollection();
      final querySnapshot = await collection.get();

      if (querySnapshot.size == 0) {
        return right(List10.empty());
      }

      final games = <OfflineGame>[];
      for (final doc in querySnapshot.docs) {
        final json = (doc.data() ?? {}) as Map<String, dynamic>;

        json.addAll({
          'id': doc.id,
        });

        games.add(OfflineGameDto.fromJson(json).toDomain());
      }

      return right(List10(games.toImmutableList()));
    } catch (e) {
      print(e);
      return left(const GameHistoryFailure.unexpected()); // TODO name better
    }
  }

  @override
  Future<Either<GameHistoryFailure, List10<OnlineGame>>>
      fetchGameHistoryOnline({
    required String uid,
  }) async {
    try {
      final collection = _firestore.gameHistoryOnlineCollection(uid: uid);
      final querySnapshot = await collection.get();

      if (querySnapshot.size == 0) {
        return right(List10.empty());
      }

      final games = <OnlineGame>[];
      for (final doc in querySnapshot.docs) {
        final json = (doc.data() ?? {}) as Map<String, dynamic>;

        final id = doc.id;

        json.addAll({
          'id': id,
        });

        final dto = OnlineGameDto.fromJson(json);

        final players = <OnlinePlayerDto>[];
        for (final player in dto.players) {
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

        games.add(dto.copyWith(players: players).toDomain());
      }

      return right(List10(games.toImmutableList()));
    } catch (e) {
      print(e);
      return left(const GameHistoryFailure.unexpected()); // TODO name better
    }
  }
}

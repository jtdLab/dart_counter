import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_history/game_history_failure.dart';
import 'package:dart_counter/domain/game_history/i_game_history_service.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/infrastructure/play/game_dto.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IGameHistoryService)
class GameHistoryService implements IGameHistoryService {
  final FirebaseFirestore _firestore;

  GameHistoryService(
    this._firestore,
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
        games.add(OfflineGameDto.fromFirestore(doc).toDomain());
      }

      return right(List10(games));
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
        games.add(OnlineGameDto.fromFirestore(doc).toDomain());
      }

      return right(List10(games));
    } catch (e) {
      print(e);
      return left(const GameHistoryFailure.unexpected()); // TODO name better
    }
  }
}

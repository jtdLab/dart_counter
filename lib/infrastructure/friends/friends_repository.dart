import 'package:dart_counter/domain/friends/friend.dart';
import 'package:dart_counter/domain/friends/friends_failure.dart';
import 'package:dart_counter/domain/friends/i_friends_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFriendsRepository)
class FriendsRepository implements IFriendsRepository {
  @override
  Stream<Either<FriendFailure, Friend>> watch() {
    // TODO: implement watch
    throw UnimplementedError();
  }
}

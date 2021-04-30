import 'package:dart_counter/domain/friends/friends_failure.dart';
import 'package:dartz/dartz.dart';

import 'friend.dart';

abstract class IFriendsRepository {
  Stream<Either<FriendFailure, Friend>> watch();
}

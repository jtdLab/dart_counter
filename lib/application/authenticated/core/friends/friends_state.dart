part of 'friends_cubit.dart';

@freezed
class FriendsState with _$FriendsState {
  const factory FriendsState.loadInProgress() = FriendsLoadInProgress;
  const factory FriendsState.loadSuccess({
    required KtList<Friend> friends,
    required KtList<FriendRequest> receivedFriendRequests,
    required KtList<FriendRequest> sentFriendRequests,
  }) = FriendsLoadSuccess;
  const factory FriendsState.loadFailure({
    required FriendFailure failure,
  }) = FriendsLoadFailure;

  const FriendsState._();

  /// Returns friends if available
  ///
  /// else throws error.
  KtList<Friend> get friends {
    return maybeWhen(
      loadSuccess: (friends, _, __) => friends,
      orElse: () => throw ApplicationError.unexpectedValue(),
    );
  }

  /// Returns the received friend requests if available
  ///
  /// else throws error.
  KtList<FriendRequest> get receivedFriendRequests {
    return maybeWhen(
      loadSuccess: (_, receivedFriendRequests, __) => receivedFriendRequests,
      orElse: () => throw ApplicationError.unexpectedValue(),
    );
  }

  /// Returns the sent friend requests if available
  ///
  /// else throws error.
  KtList<FriendRequest> get sentFriendRequests {
    return maybeWhen(
      loadSuccess: (_, __, sentFriendRequests) => sentFriendRequests,
      orElse: () => throw ApplicationError.unexpectedValue(),
    );
  }
}

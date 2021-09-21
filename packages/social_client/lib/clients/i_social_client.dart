abstract class ISocialClient {
  Future<bool> connect({
    required String idToken,
  });

  Future<bool> disconnect();

  Future<bool> sendFriendRequest({
    required String toId,
  });

  Future<bool> cancelFriendRequest({
    required String toId,
  });

  Future<bool> acceptFriendRequest({
    required String fromId,
  });

  Future<bool> declineFriendRequest({
    required String fromId,
  });

  Future<bool> removeFriend({
    required String friendId,
  });

  Future<bool> sendGameInvitation({
    required String toId,
  });

  Future<bool> cancelGameInvitation({
    required String toId,
  });

  Future<bool> acceptGameInvitation({
    required String fromId,
  });

  Future<bool> declineGameInvitation({
    required String fromId,
  });

  Future<bool> createUser({
    required String email,
    required String username,
    required String password,
  });

  Future<bool> updateEmail({
    required String newEmail,
  });

  Future<bool> updateName({
    required String newName,
  });

  Future<bool> addOfflineGame({
    required Map<String, dynamic> gameJson,
  });
}

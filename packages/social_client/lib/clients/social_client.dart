import 'dart:convert';

import 'i_social_client.dart';
import 'package:http/http.dart' as http;

class SocialClient implements ISocialClient {
  final String host;
  final int port;

  String? _token;

  Map<String, String> get _headers =>
      {'Content-Type': 'application/json', 'Authorization': 'Bearer $_token'};

  // TODO
  Uri get _authEndpoint =>
      Uri.parse('http://$host:$port/authentication/${(_token ?? '')}');

  Uri _userEndpoint({
    required String method,
  }) =>
      Uri.parse('http://$host:$port/users?method=${method}');

  SocialClient({
    required this.host,
    required this.port,
  });

  @override
  Future<bool> acceptFriendRequest({
    required String fromId,
  }) async {
    _checkAuthenticated();

    final res = await http.patch(
      _userEndpoint(method: 'acceptFriendRequest'),
      headers: _headers,
      body: jsonEncode({
        'fromId': fromId,
      }),
    );

    return res.statusCode == 200;
  }

  @override
  Future<bool> acceptGameInvitation({
    required String fromId,
  }) async {
    _checkAuthenticated();

    final res = await http.patch(
      _userEndpoint(method: 'acceptGameInvitation'),
      headers: _headers,
      body: jsonEncode({
        'fromId': fromId,
      }),
    );

    return res.statusCode == 200;
  }

  @override
  Future<bool> cancelFriendRequest({
    required String toId,
  }) async {
    _checkAuthenticated();

    final res = await http.patch(
      _userEndpoint(method: 'cancelFriendRequest'),
      headers: _headers,
      body: jsonEncode({
        'toId': toId,
      }),
    );

    return res.statusCode == 200;
  }

  @override
  Future<bool> cancelGameInvitation({
    required String toId,
  }) async {
    _checkAuthenticated();

    final res = await http.patch(
      _userEndpoint(method: 'cancelGameInvitation'),
      headers: _headers,
      body: jsonEncode({
        'toId': toId,
      }),
    );

    return res.statusCode == 200;
  }

  @override
  Future<bool> connect({
    required String idToken,
  }) async {
    final res = await http.post(
      _authEndpoint,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'strategy': 'firebase',
        'access_token': idToken,
      }),
    );

    try {
      if (res.statusCode == 201) {
        _token = jsonDecode(res.body)['accessToken'] as String;
        print('JWT: $_token');
        return true;
      }
    } on Error {}

    return false;
  }

  @override
  Future<bool> declineFriendRequest({
    required String fromId,
  }) async {
    _checkAuthenticated();

    final res = await http.patch(
      _userEndpoint(method: 'declineFriendRequest'),
      headers: _headers,
      body: jsonEncode({
        'fromId': fromId,
      }),
    );

    return res.statusCode == 200;
  }

  @override
  Future<bool> declineGameInvitation({
    required String fromId,
  }) async {
    _checkAuthenticated();

    final res = await http.patch(
      _userEndpoint(method: 'declineGameInvitation'),
      headers: _headers,
      body: jsonEncode({
        'fromId': fromId,
      }),
    );

    return res.statusCode == 200;
  }

  @override
  Future<bool> disconnect() async {
    _checkAuthenticated();

    final res = await http.delete(
      _authEndpoint,
      headers: _headers,
    );

    if (res.statusCode == 200) {
      _token = null;
      return true;
    }
    return false;
  }

  @override
  Future<bool> removeFriend({
    required String friendId,
  }) async {
    _checkAuthenticated();

    final res = await http.patch(
      _userEndpoint(method: 'removeFriend'),
      headers: _headers,
      body: jsonEncode({
        'friendId': friendId,
      }),
    );

    return res.statusCode == 200;
  }

  @override
  Future<bool> sendFriendRequest({
    required String toId,
  }) async {
    _checkAuthenticated();

    final res = await http.patch(
      _userEndpoint(method: 'sendFriendRequest'),
      headers: _headers,
      body: jsonEncode({
        'toId': toId,
      }),
    );

    return res.statusCode == 200;
  }

  @override
  Future<bool> sendGameInvitation({
    required String toId,
  }) async {
    _checkAuthenticated();

    final res = await http.patch(
      _userEndpoint(method: 'sendGameInvitation'),
      headers: _headers,
      body: jsonEncode({
        'toId': toId,
      }),
    );

    return res.statusCode == 200;
  }

  @override
  Future<bool> createUser({
    required String email,
    required String username,
    required String password,
  }) async {
    _checkAuthenticated();

    final res = await http.patch(
      _userEndpoint(method: 'createUser'),
      headers: _headers,
      body: jsonEncode({
        'email': email,
        'name': username,
        'password': password,
      }),
    );

    if (res.statusCode == 400) {
      final json = jsonDecode(res.body) as Map<String, dynamic>;
      final error = json['message'];
      if (error == 'email-already-in-use') {
        throw EmailAlreadyInUseError();
      } else if (error == 'username-already-in-use') {
        throw UsernameAlreadyInUseError();
      }
    }

    return res.statusCode == 200;
  }

  @override
  Future<String?> getEmailByUsername({
    required String username,
    required String password,
  }) async {
    _checkAuthenticated();

    final res = await http.patch(
      _userEndpoint(method: 'getEmailByUsername'),
      headers: _headers,
      body: jsonEncode({
        'name': username,
        'password': password,
      }),
    );

    if (res.statusCode == 200) {
      final json = jsonDecode(res.body) as Map<String, dynamic>;
      if (json.containsKey('email')) {
        return json['email'];
      }
    }

    return null;
  }

  @override
  Future<bool> updateEmail({
    required String newEmail,
  }) async {
    _checkAuthenticated();

    final res = await http.patch(
      _userEndpoint(method: 'updateEmail'),
      headers: _headers,
      body: jsonEncode({
        'email': newEmail,
      }),
    );

    return res.statusCode == 200;
  }

  @override
  Future<bool> updateName({
    required String newName,
  }) async {
    _checkAuthenticated();

    final res = await http.patch(
      _userEndpoint(method: 'updateName'),
      headers: _headers,
      body: jsonEncode({
        'name': newName,
      }),
    );

    return res.statusCode == 200;
  }

  @override
  Future<bool> addOfflineGame({
    required Map<String, dynamic> gameJson,
  }) async {
    _checkAuthenticated();

    // TODO maybe some how check if valid game in gameJson

    final res = await http.patch(
      _userEndpoint(method: 'addOfflineGame'),
      headers: _headers,
      body: jsonEncode(gameJson),
    );

    return res.statusCode == 200;
  }

  _checkAuthenticated() {
    if (_token == null) {
      return throw Exception('You are not authenticated - Authenticate first');
    }
  }
}

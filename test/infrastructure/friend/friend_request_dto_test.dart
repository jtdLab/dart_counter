import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/infrastructure/friend/friend_request_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final id = UniqueId.fromUniqueString('id');
  const idString = 'id';
  const gameIdString = 'gameId';
  final toId = UniqueId.fromUniqueString('toId');
  const toIdString = 'toId';
  final fromId = UniqueId.fromUniqueString('fromId');
  const fromIdString = 'fromId';
  final fromName = Username('fromName');
  const fromNameString = 'fromName';
  const read = false;
  final createdAt = DateTime.parse('2021-07-20 20:18:04');
  final createdAtInt =
      DateTime.parse('2021-07-20 20:18:04').millisecondsSinceEpoch;

  final domain = FriendRequest(
    id: id,
    toId: toId,
    fromId: fromId,
    fromName: fromName,
    read: read,
    createdAt: createdAt,
  );

  final dto = FriendRequestDto(
    id: idString,
    toId: toIdString,
    fromId: fromIdString,
    fromName: fromNameString,
    read: read,
    createdAt: createdAtInt,
  );

  final json = {
    'id': idString,
    'gameId': gameIdString,
    'toId': toIdString,
    'fromId': fromIdString,
    'fromName': fromNameString,
    'read': read,
    'createdAt': createdAtInt,
  };

  test('#Constructor#', () {
    // Assert
    expect(dto.id, idString);
    expect(dto.toId, toIdString);
    expect(dto.fromId, fromIdString);
    expect(dto.fromName, fromNameString);
    expect(dto.read, read);
    expect(dto.createdAt, createdAtInt);
  });

  test('#fromDomain#', () {
    // Act
    final dto = FriendRequestDto.fromDomain(domain);

    // Assert
    expect(dto.id, idString);
    expect(dto.toId, toIdString);
    expect(dto.fromId, fromIdString);
    expect(dto.fromName, fromNameString);
    expect(dto.read, read);
    expect(dto.createdAt, createdAtInt);
  });

  test('#toDomain#', () {
    // Act
    final domain = dto.toDomain();

    // Assert
    expect(domain.id, id);
    expect(domain.toId, toId);
    expect(domain.fromId, fromId);
    expect(domain.fromName, fromName);
    expect(domain.read, read);
    expect(domain.createdAt, createdAt);
  });

  test('#fromJson#', () {
    // Act
    final dto = FriendRequestDto.fromJson(json);

    // Assert
    expect(dto.id, idString);
    expect(dto.toId, toIdString);
    expect(dto.fromId, fromIdString);
    expect(dto.fromName, fromNameString);
    expect(dto.read, read);
    expect(dto.createdAt, createdAtInt);
  });

  test('#toJson#', () {
    // Act
    final json = dto.toJson();

    // Assert
    expect(json['id'], idString);
    expect(json['toId'], toIdString);
    expect(json['fromId'], fromIdString);
    expect(json['fromName'], fromNameString);
    expect(json['read'], read);
    expect(json['createdAt'], createdAtInt);
  });
}

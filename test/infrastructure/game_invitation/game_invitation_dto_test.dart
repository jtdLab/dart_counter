import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/infrastructure/game_invitation/game_invitation_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final id = UniqueId.fromUniqueString('id');
  const idString = 'id';
  final gameId = UniqueId.fromUniqueString('gameId');
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

  final domain = GameInvitation(
    id: id,
    gameId: gameId,
    toId: toId,
    fromId: fromId,
    fromName: fromName,
    read: read,
    createdAt: createdAt,
  );

  final dto = GameInvitationDto(
    id: idString,
    gameId: gameIdString,
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
    expect(dto.gameId, gameIdString);
    expect(dto.toId, toIdString);
    expect(dto.fromId, fromIdString);
    expect(dto.fromName, fromNameString);
    expect(dto.read, read);
    expect(dto.createdAt, createdAtInt);
  });

  test('#fromDomain#', () {
    // Act
    final dto = GameInvitationDto.fromDomain(domain);

    // Assert
    expect(dto.id, idString);
    expect(dto.gameId, gameIdString);
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
    expect(domain.gameId, gameId);
    expect(domain.toId, toId);
    expect(domain.fromId, fromId);
    expect(domain.fromName, fromName);
    expect(domain.read, read);
    expect(domain.createdAt, createdAt);
  });

  test('#fromJson#', () {
    // Act
    final dto = GameInvitationDto.fromJson(json);

    // Assert
    expect(dto.id, idString);
    expect(dto.gameId, gameIdString);
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
    expect(json['gameId'], gameIdString);
    expect(json['toId'], toIdString);
    expect(json['fromId'], fromIdString);
    expect(json['fromName'], fromNameString);
    expect(json['read'], read);
    expect(json['createdAt'], createdAtInt);
  });
}

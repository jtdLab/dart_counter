import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/user_snapshot.dart';
import 'package:dart_counter/infrastructure/friend/user_snapshot_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final id = UniqueId.fromUniqueString('id');
  const idString = 'id';
  const photoUrl = 'http://www.example.com';
  final name = Username('dummyName');
  const nameString = 'dummyName';

  final domain = UserSnapshot(
    id: id,
    photoUrl: photoUrl,
    name: name,
  );

  const dto = UserSnapshotDto(
    id: idString,
    photoUrl: photoUrl,
    name: nameString,
  );

  final json = {
    'id': idString,
    'photoUrl': photoUrl,
    'name': nameString,
  };

  test('constructor', () {
    // Assert
    expect(dto.id, idString);
    expect(dto.photoUrl, photoUrl);
    expect(dto.name, nameString);
  });

  test('fromDomain', () {
    // Act
    final dto = UserSnapshotDto.fromDomain(domain);

    // Assert
    expect(dto.id, idString);
    expect(dto.photoUrl, photoUrl);
    expect(dto.name, nameString);
  });

  test('toDomain', () {
    // Act
    final domain = dto.toDomain();

    // Assert
    expect(domain.id, id);
    expect(domain.photoUrl, photoUrl);
    expect(domain.name, name);
  });

  test('fromJson', () {
    // Act
    final dto = UserSnapshotDto.fromJson(json);

    // Assert
    expect(dto.id, idString);
    expect(dto.photoUrl, photoUrl);
    expect(dto.name, nameString);
  });

  test('toJson', () {
    // Act
    final json = dto.toJson();

    // Assert
    expect(json['id'], idString);
    expect(json['photoUrl'], photoUrl);
    expect(json['name'], nameString);
  });
}

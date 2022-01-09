import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_invitation.freezed.dart';

@freezed
class GameInvitation with _$GameInvitation {
  const factory GameInvitation({
    required UniqueId id,
    required UniqueId gameId,
    required UniqueId toId,
    required UniqueId fromId,
    required Username fromName,
    required bool read,
    required DateTime createdAt,
  }) = _GameInvitation;

  factory GameInvitation.dummy() => GameInvitation(
        id: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        gameId: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        toId: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        fromId: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        fromName: Username(
          faker.randomGenerator.element([
            'SyxGott',
            'Kelb37',
            'Drecksau43',
            'FlippIt',
            'DartsIngo',
            'FrenchKek',
            'Flizzy',
            'Marwinn8',
          ]),
        ),
        read: faker.randomGenerator.boolean(),
        createdAt: DateTime.now(),
      );
}

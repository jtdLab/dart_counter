import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_invitation.freezed.dart';

@freezed
class GameInvitation with _$GameInvitation {
  const factory GameInvitation({
    required UniqueId id,
    required Username from,
    required int lobbyCode,
    required bool read,
  }) = _GameInvitation;

  factory GameInvitation.dummy() => GameInvitation(
        id: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        from: Username(
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
        lobbyCode: faker.randomGenerator.integer(9999, min: 1000),
        read: false,
      );
}

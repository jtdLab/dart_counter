import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/infrastructure/game/abstract_player_dto.dart';
import 'package:dart_counter/infrastructure/game/mode_x.dart';
import 'package:dart_counter/infrastructure/game/status_x.dart';
import 'package:dart_counter/infrastructure/game/type_x.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../abstract_game_dto.dart';

part 'online_game_dto.freezed.dart';
part 'online_game_dto.g.dart';

@freezed
class OnlineGameDto with _$OnlineGameDto implements AbstractGameDto {
  @Implements<AbstractGameDto>()
  const factory OnlineGameDto({
    required String id,
    required int createdAt,
    required String ownerId,
    required String status,
    required String mode,
    required int size,
    required String type,
    required int startingPoints,
    required List<OnlinePlayerDto> players,
  }) = _OnlineGameDto;

  const OnlineGameDto._();

  OnlineGame toDomain() {
    final legsNeededToWin = type == Type.legs.toShortString()
        ? mode == Mode.firstTo.toShortString()
            ? size
            : (size / 2).round()
        : 3;
    final setsNeededToWin = type == Type.sets.toShortString()
        ? mode == Mode.firstTo.toShortString()
            ? size
            : (size / 2).round()
        : null;

    return OnlineGame(
      id: UniqueId.fromUniqueString(id),
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
      ownerId: UniqueId.fromUniqueString(ownerId),
      status: StatusX.parse(status),
      mode: ModeX.parse(mode),
      size: size,
      type: TypeX.parse(type),
      startingPoints: startingPoints,
      players: KtList.from(
        players.map(
          (player) => player.toDomain(
            startingPoints: startingPoints,
            legsNeededToWin: legsNeededToWin,
            setsNeededToWin: setsNeededToWin,
          ),
        ),
      ),
    );
  }

  factory OnlineGameDto.fromFirestore(DocumentSnapshot doc) {
    final json = (doc.data() ?? {}) as Map<String, dynamic>;

    json.addAll({
      'id': doc.id,
    });

    return OnlineGameDto.fromJson(json);
  }

  factory OnlineGameDto.fromJson(Map<String, dynamic> json) =>
      _$OnlineGameDtoFromJson(json);
}

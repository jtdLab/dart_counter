import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/infrastructure/game/abstract_player_dto.dart';
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
    return OnlineGame(
      id: UniqueId.fromUniqueString(id),
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
      ownerId: UniqueId.fromUniqueString(ownerId),
      status: status == 'pending'
          ? Status.pending
          : status == 'running'
              ? Status.running
              : status == 'canceled'
                  ? Status.canceled
                  : Status.finished,
      mode: mode == 'firstTo' ? Mode.firstTo : Mode.bestOf,
      size: size,
      type: type == 'legs' ? Type.legs : Type.sets,
      startingPoints: startingPoints,
      players: KtList.from(
        players.map((player) => player.toDomain()),
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

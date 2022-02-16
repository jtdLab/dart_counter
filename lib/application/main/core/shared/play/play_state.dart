import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_state.freezed.dart';

@freezed
class PlayState<T extends AbstractGameSnapshot> with _$PlayState<T> {
  const factory PlayState.inactive() = PlayInactive;
  const factory PlayState.active({
    required T gameSnapshot,
  }) = PlayActive;

  const PlayState._();

  /// Returns the game snapshot if active
  ///
  /// else throws error.
  T get gameSnapshot {
    return maybeWhen(
      active: id,
      orElse: () => throw Error(),
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_game_event.freezed.dart';

@freezed
class InGameEvent with _$InGameEvent {
  const factory InGameEvent.showCheckoutDetailsChanged({
    required bool newShowCheckoutDetails,
  }) = ShowCheckoutDetailsChanged;
  const factory InGameEvent.gameCanceled() = GameCanceled;
}

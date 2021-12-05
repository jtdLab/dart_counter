import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_game/util.dart' as ex;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IDartUtils)
class DartUtils implements IDartUtils {
  @override
  int maxDartsOnDouble({
    required int pointsLeft,
    required int points,
  }) =>
      ex.DartUtils.maxDartsOnDouble(pointsLeft: pointsLeft, points: points);

  @override
  int maxDartsThrown({
    required int pointsLeft,
    required int points,
  }) =>
      ex.DartUtils.maxDartsThrown(pointsLeft: pointsLeft, points: points);

  @override
  int minDartsOnDouble({
    required int pointsLeft,
    required int points,
  }) =>
      ex.DartUtils.minDartsOnDouble(pointsLeft: pointsLeft, points: points);

  @override
  int minDartsThrown({
    required int pointsLeft,
    required int points,
  }) =>
      ex.DartUtils.minDartsThrown(pointsLeft: pointsLeft, points: points);

  @override
  bool validatePoints({
    required int pointsLeft,
    required int points,
  }) =>
      ex.DartUtils.validatePoints(pointsLeft: pointsLeft, points: points);

  @override
  bool isFinish({
    required int points,
  }) =>
      ex.DartUtils.isFinish(points: points);
}

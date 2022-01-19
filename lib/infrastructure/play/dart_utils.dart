import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_game/util.dart' as ex;
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

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
    int? pointsLeft,
    required int points,
  }) =>
      ex.DartUtils.validatePoints(pointsLeft: pointsLeft, points: points);

  // TODO move this impl to ex package maybe check if this is correctly impl
  @override
  bool validateDarts({
    required int pointsLeft,
    required KtList<Dart> darts,
  }) {
    final int points = darts.fold(0, (acc, dart) => acc + dart.points());

    if (darts.size > 3) {
      return false;
    }

    if (pointsLeft == 2 &&
        darts.count((dart) => dart.type == DartType.double) == 0) {
      return false;
    }

    if (points == pointsLeft) {
      if (darts.isEmpty()) {
        return false;
      }

      if (darts.get(darts.lastIndex).type != DartType.double) {
        return false;
      }
    }

    return ex.DartUtils.validatePoints(
      pointsLeft: pointsLeft,
      points: points,
    );
  }

  @override
  bool isFinish({
    required int points,
  }) =>
      ex.DartUtils.isFinish(points: points);
}

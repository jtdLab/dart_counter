import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/infrastructure/game/dart_dto.dart';
import 'package:dart_game/util.dart' as ex;
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton(as: IDartUtils)
class DartUtils implements IDartUtils {
  final ex.DartUtils _dartUtils;

  DartUtils(this._dartUtils);

  @override
  int maxDartsOnDouble({
    required int pointsLeft,
    required int points,
  }) =>
      _dartUtils.maxDartsOnDouble(pointsLeft: pointsLeft, points: points);

  @override
  int maxDartsThrown({
    required int pointsLeft,
    required int points,
  }) =>
      _dartUtils.maxDartsThrown(pointsLeft: pointsLeft, points: points);

  @override
  int minDartsOnDouble({
    required int pointsLeft,
    required int points,
  }) =>
      _dartUtils.minDartsOnDouble(pointsLeft: pointsLeft, points: points);

  @override
  int minDartsThrown({
    required int pointsLeft,
    required int points,
  }) =>
      _dartUtils.minDartsThrown(pointsLeft: pointsLeft, points: points);

  @override
  bool validatePoints({
    int? pointsLeft,
    required int points,
  }) =>
      _dartUtils.validatePoints(pointsLeft: pointsLeft, points: points);

  @override
  bool validateDarts({
    required int pointsLeft,
    required KtList<Dart> darts,
  }) =>
      _dartUtils.validateDarts(
        pointsLeft: pointsLeft,
        darts: darts
            .asList()
            .map((dart) => DartDto.fromDomain(dart).toExternal())
            .toList(),
      );

  @override
  bool isFinish({
    required int points,
  }) =>
      _dartUtils.isFinish(points: points);
}

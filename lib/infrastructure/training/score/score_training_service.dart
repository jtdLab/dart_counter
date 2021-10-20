import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_game/score_training_game.dart' as ex;

@Environment(Environment.dev)
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IScoreTrainingService)
class ScoreTrainingService implements IScoreTrainingService {}

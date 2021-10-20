import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_game/double_training_game.dart' as ex;

@Environment(Environment.dev)
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IDoubleTrainingService)
class DoubleTrainingService implements IDoubleTrainingService {}

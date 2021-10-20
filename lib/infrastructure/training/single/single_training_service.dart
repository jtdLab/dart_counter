import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_game/single_training_game.dart' as ex;

@Environment(Environment.dev)
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: ISingleTrainingService)
class SingleTrainingService implements ISingleTrainingService {}

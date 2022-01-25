import 'package:dart_counter/application/main/training/shared/in_training/in_training_bloc.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/training/shared/in_training/in_training_bloc.dart';

// TODO test correct param passing if possible

@injectable
class InDoubleTrainingBloc extends InTrainingBloc {
  InDoubleTrainingBloc(
    IDoubleTrainingService doubleTrainingService,
  ) : super(
          doubleTrainingService,
        );
}

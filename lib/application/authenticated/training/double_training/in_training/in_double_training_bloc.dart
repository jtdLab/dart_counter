import 'package:dart_counter/application/authenticated/training/shared/in_training/in_training_bloc.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/authenticated/training/shared/in_training/in_training_bloc.dart';

//
@injectable
class InDoubleTrainingBloc extends InTrainingBloc {
  InDoubleTrainingBloc(
    IDoubleTrainingService doubleTrainingService,
  ) : super(
          doubleTrainingService,
        );

  /// Returns instance registered inside getIt.
  factory InDoubleTrainingBloc.getIt() => getIt<InDoubleTrainingBloc>();
}

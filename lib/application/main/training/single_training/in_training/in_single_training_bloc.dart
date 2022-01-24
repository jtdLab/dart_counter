import 'package:dart_counter/application/main/training/shared/in_training/in_training_bloc.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/training/shared/in_training/in_training_bloc.dart';

@injectable
class InSingleTrainingBloc extends InTrainingBloc {
  InSingleTrainingBloc(
    ISingleTrainingService singleTrainingService,
  ) : super(
          singleTrainingService,
        );
}

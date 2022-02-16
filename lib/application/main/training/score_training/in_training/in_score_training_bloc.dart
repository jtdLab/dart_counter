import 'package:dart_counter/application/main/training/shared/in_training/in_training_bloc.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/training/shared/in_training/in_training_bloc.dart';

// TODO test correct param passing if possible

@injectable
class InScoreTrainingBloc extends InTrainingBloc {
  InScoreTrainingBloc(
    IScoreTrainingService scoreTrainingService,
  ) : super(
          scoreTrainingService,
        );

  /// Returns instance registered inside getIt.
  factory InScoreTrainingBloc.getIt() => getIt<InScoreTrainingBloc>();
}

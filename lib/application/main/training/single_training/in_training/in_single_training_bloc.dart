import 'package:dart_counter/application/main/training/shared/in_training/in_training_bloc.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/training/shared/in_training/in_training_bloc.dart';

// TODO test correct param passing if possible

@injectable
class InSingleTrainingBloc extends InTrainingBloc {
  InSingleTrainingBloc(
    ISingleTrainingService singleTrainingService,
  ) : super(
          singleTrainingService,
        );

  /// Returns instance registered inside getIt.
  factory InSingleTrainingBloc.getIt() => getIt<InSingleTrainingBloc>();
}

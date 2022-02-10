import 'package:dart_counter/application/main/training/shared/in_training/in_training_bloc.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/training/shared/in_training/in_training_bloc.dart';

@injectable
class InBobsTwentySevenBloc extends InTrainingBloc {
  InBobsTwentySevenBloc(
    IBobsTwentySevenService bobsTwentySevenService,
  ) : super(
          bobsTwentySevenService,
        );
}

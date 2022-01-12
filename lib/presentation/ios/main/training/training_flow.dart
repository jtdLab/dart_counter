// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/training/training_bloc.dart';
import 'package:dart_counter/application/main/training/in_training/bobs_twenty_seven/bobs_twenty_seven_bloc.dart';
import 'package:dart_counter/application/main/training/in_training/double_training/double_training_bloc.dart';
import 'package:dart_counter/application/main/training/in_training/score_training/score_training_bloc.dart';

class TrainingFlow extends StatelessWidget {
  const TrainingFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<TrainingBloc>()..add(const TrainingEvent.trainingCreated()),
        ),
        BlocProvider(
          create: (context) => getIt<DoubleTrainingBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ScoreTrainingBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<BobsTwentySevenBloc>(),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}

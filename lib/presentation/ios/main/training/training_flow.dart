// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/core/training/training_bloc.dart';
import 'package:dart_counter/application/core/training/bobs_twenty_seven/bobs_twenty_seven_bloc.dart';
import 'package:dart_counter/application/core/training/double_training/double_training_bloc.dart';
import 'package:dart_counter/application/core/training/score_training/score_training_bloc.dart';
import 'package:dart_counter/application/core/training/single_training/single_training_bloc.dart';

class TrainingFlow extends StatelessWidget {
  const TrainingFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<TrainingBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SingleTrainingBloc>(),
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

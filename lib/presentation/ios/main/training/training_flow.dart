// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/core/training/training_bloc.dart';

class TrainingFlow extends StatelessWidget {
  const TrainingFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TrainingBloc>(),
      child: const AutoRouter(),
    );
  }
}

// CORE
import 'package:dart_counter/application/main/core/user/user_cubit.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/training/create_training/create_training_bloc.dart';

class CreateTrainingFlow extends StatelessWidget {
  const CreateTrainingFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateTrainingBloc.getIt(
        context.read<UserCubit>(),
      )..add(const CreateTrainingEvent.started()),
      child: const AutoRouter(),
    );
  }
}

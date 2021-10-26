// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/core/training/training_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/training/type.dart';
import 'package:dart_counter/domain/training/training_player_snapshot.dart';
import 'package:dart_counter/domain/training/mode.dart';

// LOCAL WIDGETS
import './../../shared.dart';
part 'widgets.dart';

class CreateTrainingPage extends StatelessWidget {
  const CreateTrainingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<TrainingBloc, TrainingState>(
      listener: (context, state) {},
      child: AppPage(
        navigationBar: AppNavigationBar(
          leading: CancelButton(
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  reverseTransitionDuration: Duration.zero,
                  opaque: false,
                  pageBuilder: (context, _, __) => Builder(
                    builder: (context) => YouReallyWantToCancelGameDialog(
                      onYesPressed: () {
                        context.read<TrainingBloc>().add(
                              const TrainingEvent.trainingCanceled(),
                            );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
          middle: Text(
            LocaleKeys.createGame.tr().toUpperCase(),
          ),
        ),
        child: const SingleChildScrollView(
          child: _CreateTrainingWidget(),
        ),
      ),
    );
  }
}

import 'package:dart_counter/application/main/training/score_training/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/training/score_training/detailed_input_area/key_board/digit_button/detailed_digit_button_bloc.dart';
import 'package:dart_counter/application/main/training/score_training/score_training_bloc.dart';
import 'package:dart_counter/application/main/training/score_training/standard_input_area/standard_input_area_bloc.dart';
import 'package:dart_counter/application/main/training/training_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/shared/widgets.dart';
import 'package:dart_counter/presentation/ios/main/training/shared/in_training/widgets.dart';

part 'widgets.dart';

class InScoreTrainingPage extends StatelessWidget {
  const InScoreTrainingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        leading: CancelButton(
          onPressed: () {
            // show overlay
            Navigator.of(context).push(
              PageRouteBuilder(
                reverseTransitionDuration: Duration.zero,
                opaque: false,
                pageBuilder: (context, _, __) => BlocProvider(
                  create: (context) => getIt<TrainingBloc>(),
                  child: Builder(
                    builder: (context) => YouReallyWantToCancelGameDialog(
                      onYesPressed: () {
                        context.read<TrainingBloc>().add(
                              const TrainingEvent.trainingCanceled(),
                            );
                        context.router.replace(const HomePageRoute());
                      },
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        // TODO localekeys
        middle: const Text('SCORE'),
      ),
      child: const _InScoreTrainingWidget(),
    );
  }
}

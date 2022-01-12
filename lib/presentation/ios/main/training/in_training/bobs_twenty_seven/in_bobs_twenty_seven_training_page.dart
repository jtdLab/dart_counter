import 'dart:math';

import 'package:dart_counter/application/main/training/in_training/bobs_twenty_seven/bobs_twenty_seven_bloc.dart';
import 'package:dart_counter/application/main/training/training_bloc.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_player_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/shared/widgets.dart';
import 'package:dart_counter/presentation/ios/main/training/shared/in_training/widgets.dart';

part 'widgets.dart';

class InBobyTwentySeventTrainingPage extends StatelessWidget {
  const InBobyTwentySeventTrainingPage({
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
        middle: const Text('BOBS 27'),
      ),
      child: const _InBobsTwentySevenTrainingWidget(),
    );
  }
}

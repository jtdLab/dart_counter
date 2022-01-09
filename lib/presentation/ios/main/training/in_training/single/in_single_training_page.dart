import 'dart:math';

import 'package:dart_counter/application/main/training/single_training/single_training_bloc.dart';
import 'package:dart_counter/application/main/training/training_bloc.dart';
import 'package:dart_counter/domain/training/single/single_training_player_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/shared/widgets.dart';
import 'package:dart_counter/presentation/ios/main/training/shared/in_training/widgets.dart';
import 'package:faker/faker.dart';

part 'widgets.dart';

class InSingleTrainingPage extends StatelessWidget {
  const InSingleTrainingPage({
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
        middle: const Text('SINGLE'),
      ),
      child: const _InSingleTrainingWidget(),
    );
  }
}

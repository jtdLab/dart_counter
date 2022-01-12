import 'package:dart_counter/application/main/training/double_training/double_training_watcher_cubit.dart';
import 'package:dart_counter/application/main/training/double_training/in_game/in_double_training_bloc.dart';
import 'package:dart_counter/application/main/training/double_training/in_game/input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/training/double_training/in_game/input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/double/double_training_player_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/shared/widgets.dart'
    hide InputRow; // TODO remove hide
import 'package:dart_counter/presentation/ios/main/training/shared/in_training/widgets.dart';

part 'widgets.dart';

class InDoubleTrainingPage extends StatelessWidget {
  const InDoubleTrainingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<InDoubleTrainingBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<DoubleTrainingWatcherCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<DartsDisplayerBloc>(),
        ),
        BlocProvider<Bloc<InputRowEvent, int>>(
          create: (context) =>
              getIt<InputRowBloc>(param1: context.read<DartsDisplayerBloc>()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<KeyBoardBloc>(param1: context.read<DartsDisplayerBloc>()),
        ),
      ],
      child: AppPage(
        navigationBar: AppNavigationBar(
          leading: CancelButton(
            onPressed: () {
              // show overlay
              Navigator.of(context).push(
                PageRouteBuilder(
                  reverseTransitionDuration: Duration.zero,
                  opaque: false,
                  pageBuilder: (context, _, __) => BlocProvider(
                    create: (context) => context.read<InDoubleTrainingBloc>(),
                    child: Builder(
                      builder: (context) => YouReallyWantToCancelGameDialog(
                        onYesPressed: () {
                          context.read<InDoubleTrainingBloc>().add(
                                const InDoubleTrainingEvent.canceled(),
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
          middle: Text(LocaleKeys.doubleTraining.tr().toUpperCase()),
        ),
        child: const _InDoubleTrainingWidget(),
      ),
    );
  }
}

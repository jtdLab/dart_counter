import 'package:dart_counter/application/in_game/optical_input_area/optical_input_area_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

// TODO make responsive
class OpticalInputArea extends StatelessWidget {
  const OpticalInputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OpticalInputAreaBloc>(),
      child: AppColumn(
        spacing: size6(context),
        children: [
          BlocBuilder<OpticalInputAreaBloc, OpticalInputAreaState>(
            builder: (context, state) => DartsDisplayer(
              darts: state.darts,
            ),
          ),
          BlocBuilder<OpticalInputAreaBloc, OpticalInputAreaState>(
            builder: (context, state) {
              return InputRow(
                onUndoPressed: () => context
                    .read<OpticalInputAreaBloc>()
                    .add(const OpticalInputAreaEvent.undoThrowPressed()),
                input: state.darts.foldRight(0, (dart, acc) => acc + dart.points()),
                onPerformThrowPressed: () => context
                    .read<OpticalInputAreaBloc>()
                    .add(const OpticalInputAreaEvent.performThrowPressed()),
              );
            },
          ),
          const OpticalKeyBoard(),
        ],
      ),
    );
  }
}

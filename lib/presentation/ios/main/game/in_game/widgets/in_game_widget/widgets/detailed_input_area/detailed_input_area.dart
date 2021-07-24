import 'package:dart_counter/application/in_game/detailed_input_area/detailed_input_area_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class DetailedInputArea extends StatelessWidget {
  const DetailedInputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DetailedInputAreaBloc>(),
      child: AppColumn(
        spacing: size6(context),
        children: [
          BlocBuilder<DetailedInputAreaBloc, DetailedInputAreaState>(
            builder: (context, state) => DartsDisplayer(
              darts: state.darts,
            ),
          ),
          BlocBuilder<DetailedInputAreaBloc, DetailedInputAreaState>(
            builder: (context, state) {
              return InputRow(
                onUndoPressed: () => context
                    .read<DetailedInputAreaBloc>()
                    .add(const DetailedInputAreaEvent.undoThrowPressed()),
                input: state.darts
                    .foldRight(0, (dart, acc) => acc + dart.points()),
                onPerformThrowPressed: () => context
                    .read<DetailedInputAreaBloc>()
                    .add(const DetailedInputAreaEvent.performThrowPressed()),
              );
            },
          ),
          const DetailedKeyBoard(),
        ],
      ),
    );
  }
}

import 'package:dart_counter/application/in_game/standard_input_area/standard_input_area_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

// TODO flex factors
class StandardInputArea extends StatelessWidget {
  const StandardInputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<StandardInputAreaBloc>(),
      child: AppColumn(
        spacing: size6(context),
        children: [
          Expanded(
            flex: 10,
            child: AppColumn(
              spacing: size6(context),
              children: [
                const Spacer(
                  flex: 10,
                ),
                BlocBuilder<StandardInputAreaBloc, StandardInputAreaState>(
                  builder: (context, state) => Expanded(
                    flex: 30,
                    child: InputRow(
                      onUndoPressed: () => context
                          .read<StandardInputAreaBloc>()
                          .add(const StandardInputAreaEvent.undoThrowPressed()),
                      input: state.input,
                      onPerformThrowPressed: () => context
                          .read<StandardInputAreaBloc>()
                          .add(const StandardInputAreaEvent
                              .performThrowPressed()),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 30,
            child: StandardKeyBoard(),
          )
        ],
      ),
    );
  }
}

import 'package:dart_counter/application/in_game/standard_input_area/standard_input_area_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

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
          AppSpacer.custom(
            mobileSize: ResponsiveDouble(
              small: 2 * size12(context),
              normal: 2 * size12(context),
              large: 2 * size12(context),
              extraLarge: 2 * size12(context),
            ),
          ),
          BlocBuilder<StandardInputAreaBloc, StandardInputAreaState>(
            builder: (context, state) {
              return InputRow(
                onUndoPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.undoThrowPressed()),
                input: state.input,
                onPerformThrowPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.performThrowPressed()),
              );
            },
          ),
          const StandardKeyBoard(),
        ],
      ),
    );
  }
}

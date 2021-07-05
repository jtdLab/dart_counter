import 'package:dart_counter/application/in_game/input_area/input_row/input_row_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class InputPointsDisplayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InputRowBloc, InputRowState>(
      builder: (context, state) {
        return Container(
          height: size55(context),
          decoration: BoxDecoration(
            border: Border.all(
              width: border4(context),
            ),
          ),
          child: Center(
            child: Text(
              state.input.toString(),
              style: const TextStyle(fontSize: 28),
            ),
          ),
        );
      },
    );
  }
}

import 'package:dart_counter/application/in_game/input_area/input_area_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputPointsDisplayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InputAreaBloc, InputAreaState>(
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

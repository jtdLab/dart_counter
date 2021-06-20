import 'package:dart_counter/application/in_game/input_area/input_area_bloc.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_column.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/input_area/widgets/input_row/input_row.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/input_area/widgets/key_board/key_board.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputArea extends StatelessWidget {
  const InputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<InputAreaBloc>(),
      child: AppColumn(
        spacing: size6(context),
        children: const [
          InputRow(),
          KeyBoard(),
        ],
      ),
    );
  }
}

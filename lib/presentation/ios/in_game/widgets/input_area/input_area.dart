import 'package:dart_counter/presentation/ios/core/widgets/layout/app_column.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/input_area/widgets/input_row/input_row.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/input_area/widgets/key_board/key_board.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class InputArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        InputRow(),
        KeyBoard(),
      ],
    );
  }
}

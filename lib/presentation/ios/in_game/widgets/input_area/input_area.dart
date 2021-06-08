import 'package:dart_counter/presentation/ios/core/widgets/layout/app_column.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/input_area/widgets/input_row/input_row.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/input_area/widgets/key_board/key_board.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class InputArea extends StatelessWidget {
  final VoidCallback onUndoPressed;
  final VoidCallback onDoPressed;
  final VoidCallback onCheckPressed;
  final VoidCallback onEreasePressed;
  final Function(int) onDigitPressed;

  const InputArea({
    Key? key,
    required this.onUndoPressed,
    required this.onDoPressed,
    required this.onCheckPressed,
    required this.onEreasePressed,
    required this.onDigitPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        InputRow(
          onUndoPressed: onUndoPressed,
          onDoPressed: onDoPressed,
        ),
        KeyBoard(
          onDigitPressed: onDigitPressed,
          onCheckPressed: onCheckPressed,
          onEreasePressed: onEreasePressed,
        ),
      ],
    );
  }
}

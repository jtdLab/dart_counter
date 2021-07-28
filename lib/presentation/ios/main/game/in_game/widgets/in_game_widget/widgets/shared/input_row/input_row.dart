import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

// TODO location in file strucuture
class InputRow extends StatelessWidget {
  final VoidCallback onUndoPressed;
  final int input;
  final VoidCallback onPerformThrowPressed;

  const InputRow({
    Key? key,
    required this.onUndoPressed,
    required this.input,
    required this.onPerformThrowPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      spacing: size6(context),
      children: [
        Expanded(
          child: UndoButton(
            onPressed: onUndoPressed,
          ),
        ),
        Expanded(
          child: InputPointsDisplayer(
            input: input,
          ),
        ),
        Expanded(
          child: DoButton(
            onPressed: onPerformThrowPressed,
          ),
        ),
      ],
    );
  }
}

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class InputRow extends StatelessWidget {
  const InputRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      spacing: size6(context),
      children: [
        const Expanded(
          child: UndoButton(),
        ),
        Expanded(
          child: InputPointsDisplayer(),
        ),
        const Expanded(
          child: DoButton(),
        ),
      ],
    );
  }
}

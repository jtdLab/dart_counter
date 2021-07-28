import 'package:dart_counter/presentation/ios/core/core.dart';

class InputPointsDisplayer extends StatelessWidget {
  final int input;

  const InputPointsDisplayer({
    Key? key,
    required this.input,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: Center(
        child: Text(
          input.toString(),
          style: const TextStyle(fontSize: 28), // TODO
        ),
      ),
    );
  }
}

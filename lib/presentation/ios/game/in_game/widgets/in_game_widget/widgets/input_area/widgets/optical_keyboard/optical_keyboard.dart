import 'package:dart_counter/presentation/ios/core/core.dart';

import 'widgets/widgets.dart';

class OpticalKeyboard extends StatelessWidget {
  const OpticalKeyboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 4 * size55(context) + 3 * size6(context),
        height: 4 * size55(context) + 3 * size6(context),
        child: const DartBoard(),
      ),
    );
  }
}

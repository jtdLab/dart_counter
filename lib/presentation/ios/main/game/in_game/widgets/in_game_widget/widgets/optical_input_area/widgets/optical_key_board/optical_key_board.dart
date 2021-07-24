import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

// TODO expanded not sized
class OpticalKeyBoard extends StatelessWidget {
  const OpticalKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 4 * size55(context) + 3 * size6(context),
      height: 4 * size55(context) + 3 * size6(context),
      child: const DartBoard(),
    );
  }
}

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/game/in_game/widgets/in_game_widget/widgets/input_area/widgets/input_row/input_row.dart';
import 'widgets/widgets.dart';

class OpticalKeyboard extends StatelessWidget {
  const OpticalKeyboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        const InputRow(),
        SizedBox(
          width: 4 * size55(context) + 3 * size6(context),
          height: 4 * size55(context) + 3 * size6(context),
          child: const DartBoard(),
        ),
      ],
    );
  }
}

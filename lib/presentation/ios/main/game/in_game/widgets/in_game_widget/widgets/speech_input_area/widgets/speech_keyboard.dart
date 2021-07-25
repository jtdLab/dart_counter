import 'package:dart_counter/application/in_game/speech_input_area/speech_input_area_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/game/in_game/widgets/in_game_widget/widgets/input_row/widgets/widgets.dart';

class SpeechKeyBoard extends StatelessWidget {
  const SpeechKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4 * size55(context) + 3 * size6(context),
      child: Column(
        children: [
          const Spacer(),
          Image.asset(AppImages.micro),
          const Spacer(),
          AppRow(
            spacing: size6(context),
            children: [
              const Spacer(),
              Expanded(
                child: UndoButton(
                  onPressed: () => context
                      .read<SpeechInputAreaBloc>()
                      .add(const SpeechInputAreaEvent.undoThrowPressed()),
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}

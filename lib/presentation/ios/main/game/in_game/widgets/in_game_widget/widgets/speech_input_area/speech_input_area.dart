import 'package:dart_counter/application/in_game/speech_input_area/speech_input_area_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

// TODO import
import 'package:dart_counter/presentation/ios/main/game/in_game/widgets/in_game_widget/widgets/undo_button.dart';

// TODO flex factors
class SpeechInputArea extends StatelessWidget {
  const SpeechInputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SpeechInputAreaBloc>(),
      child: AppColumn(
        spacing: size6(context),
        children: [
          const Expanded(
            flex: 3,
            child: SpeechKeyBoard(),
          ),
          Expanded(
            child: AppColumn(
              spacing: size6(context),
              children: [
                const Spacer(),
                Expanded(
                  flex: 3,
                  child: AppRow(
                    spacing: size6(context),
                    children: [
                      const Spacer(),
                      Expanded(
                        child: UndoButton(
                          onPressed: () => context
                              .read<SpeechInputAreaBloc>()
                              .add(const SpeechInputAreaEvent
                                  .undoThrowPressed()),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

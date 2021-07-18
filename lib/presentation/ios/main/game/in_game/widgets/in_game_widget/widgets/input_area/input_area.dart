import 'package:dart_counter/application/in_game/input_area/key_board/key_board_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class InputArea extends StatelessWidget {
  const InputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        SizedBox(
          height: 5 * size55(context) + 4 * size6(context),
          child: PageView(
            children: [
              BlocProvider(
                create: (context) => getIt<KeyBoardBloc>(),
                child: const KeyBoard(),
              ),
              const DetailedKeyBoard(),
              const OpticalKeyboard(),
              const SpeechKeyBoard(),
            ],
          ),
        ),
      ],
    );
  }
}

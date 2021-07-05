import 'package:dart_counter/injection.dart';

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
        const InputRow(),
        SizedBox(
          height: 4 * size55(context) + 3 * size6(context),
          child: PageView(
            children: [
              BlocProvider(
                create: (context) => getIt<KeyBoardBloc>(),
                child: const KeyBoard(),
              ),
              DetailedKeyBoard(),
              OpticalKeyboard(),
              SpeechKeyBoard(),
            ],
          ),
        ),
      ],
    );
  }
}

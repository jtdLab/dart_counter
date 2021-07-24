import 'package:dart_counter/application/in_game/speech_input_area/speech_input_area_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

// TODO add undo button
class SpeechInputArea extends StatelessWidget {
  const SpeechInputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SpeechInputAreaBloc>(),
      child: const SpeechKeyBoard(),
    );
  }
}

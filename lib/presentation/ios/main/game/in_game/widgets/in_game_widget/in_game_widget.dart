import 'package:dart_counter/application/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/in_game/optical_input_area/optical_input_area_bloc.dart';
import 'package:dart_counter/application/in_game/speech_input_area/speech_input_area_bloc.dart';
import 'package:dart_counter/application/in_game/standard_input_area/standard_input_area_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

import 'widgets/widgets.dart';

class InGameWidget extends StatelessWidget {
  const InGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const PlayerDisplayer(),
        const AppSpacer.normal(),
        Expanded(
          child: PageView(
            children: [
              const StandardInputArea(),
              const DetailedInputArea(),
              const SpeechInputArea(),
              const OpticalInputArea(),
              /**
               * BlocProvider(
                create: (context) => getIt<StandardInputAreaBloc>(),
                child: const StandardInputArea(),
              ),
              BlocProvider(
                create: (context) => getIt<DetailedInputAreaBloc>(),
                child: const DetailedInputArea(),
              ),
              BlocProvider(
                create: (context) => getIt<SpeechInputAreaBloc>(),
                child: const SpeechInputArea(),
              ),
              BlocProvider(
                create: (context) => getIt<OpticalInputAreaBloc>(),
                child: const OpticalInputArea(),
              ),
               */
            ],
          ),
        ),
      ],
    );
  }
}

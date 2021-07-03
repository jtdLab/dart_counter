import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/in_game/input_area/input_area_bloc.dart';

import 'package:dart_counter/presentation/ios/in_game/modals/modals.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class InputArea extends StatelessWidget {
  const InputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<InputAreaBloc>(),
      child: BlocListener<InputAreaBloc, InputAreaState>(
        listener: (context, state) {
          if (state.showCheckoutDetails) {
            showCupertinoModalBottomSheet(
              context: context,
              builder: (context) => CheckoutDetailsModal(
                minDartsThrown: state.minDartsThrown,
                maxDartsThrown: state.maxDartsThrown,
                minDartsOnDouble: state.minDartsOnDouble,
                maxDartsOnDouble: state.maxDartsOnDouble,
              ),
            );
          }
        },
        child: AppColumn(
          spacing: size6(context),
          children: [
            const InputRow(),
            SizedBox(
              height: 4 * size55(context) + 3 * size6(context),
              child: PageView(
                children: const [
                  KeyBoard(),
                  DetailedKeyBoard(),
                  OpticalKeyboard(),
                  SpeechKeyBoard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

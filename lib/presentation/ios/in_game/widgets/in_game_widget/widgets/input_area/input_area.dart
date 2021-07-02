import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/in_game/input_area/input_area_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/in_game/modals/checkout_details_modal/checkout_details_modal.dart';
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
          children: const [
            InputRow(),
            KeyBoard(),
          ],
        ),
      ),
    );
  }
}

import 'package:dart_counter/application/in_game/checkout_details/checkout_details_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class CheckoutDetailsModal extends StatelessWidget {
  const CheckoutDetailsModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<CheckoutDetailsBloc, CheckoutDetailsState>(
      listenWhen: (oldState, newState) =>
          oldState.confirmed != newState.confirmed,
      listener: (context, state) {
        if (state.confirmed) {
          context.router.pop();
        }
      },
      child: const CheckoutDetailsWidget(),
    );
  }
}

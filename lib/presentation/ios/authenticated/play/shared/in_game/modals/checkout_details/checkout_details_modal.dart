// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/play/shared/in_game/checkout_details/checkout_details_event.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/checkout_details/checkout_details_state.dart';

part 'widgets.dart';

class CheckoutDetailsModal extends StatelessWidget {
  final Bloc<CheckoutDetailsEvent, CheckoutDetailsState> bloc;

  const CheckoutDetailsModal({
    Key? key,
    required this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: const AppPageScaffold(
        child: _CheckoutDetailsWidget(),
      ),
    );
  }
}

// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/play/shared/in_game/checkout_details/checkout_details_bloc.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class CheckoutDetailsModal extends StatelessWidget {
  const CheckoutDetailsModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _CheckoutDetailsWidget();
  }
}

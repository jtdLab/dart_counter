// CORE
import 'package:dart_counter/application/main/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/main/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/play/shared/in_game/checkout_details/checkout_details_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';

// DOMAIN
import 'package:dart_counter/domain/play/i_dart_utils.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class CheckoutDetailsModal extends StatelessWidget {
  const CheckoutDetailsModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Bloc<InGameEvent, InGameState> ingameBloc;
    try {
      ingameBloc = context.read<InOnlineGameBloc>();
    } catch (_) {
      ingameBloc = context.read<InOfflineGameBloc>();
    }

    // TODO works but manual dependency injection is error prone
    return BlocProvider(
      create: (context) => CheckoutDetailsBloc(
        context.read<PointsLeftCubit>(),
        ingameBloc,
        getIt<InputCubit>(),
        getIt<IDartUtils>(),
      ),
      child: const AppPage(
        child: _CheckoutDetailsWidget(),
      ),
    );
  }
}

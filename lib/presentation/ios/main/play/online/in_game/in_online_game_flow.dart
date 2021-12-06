// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/application/main/play/online/watcher/play_online_watcher_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart';

// TODO maybe move some blocs further down in widget tree

class InOnlineGameFlow extends StatelessWidget {
  const InOnlineGameFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<InOnlineGameBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              PointsLeftCubit(context.read<PlayOnlineWatcherCubit>()),
        ),
        BlocProvider(
          create: (context) => getIt<InputCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<ShowCheckoutDetailsCubit>(),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}

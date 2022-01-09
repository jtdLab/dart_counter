// CORE
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/darts/darts_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points/points_cubit.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/main/play/offline/watcher/play_offline_watcher_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart';

// TODO maybe move some blocs furhter down in widget tree

class InOfflineGameFlow extends StatelessWidget {
  const InOfflineGameFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<InOfflineGameBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              PointsLeftCubit(context.read<PlayOfflineWatcherCubit>()),
        ),
        BlocProvider(
          create: (context) => getIt<PointsCubit>(),
        ),
        // TODO maybe can placed lower in the tree
        BlocProvider(
          create: (context) => DartsCubit(context.read<PointsCubit>()),
        ),
        // Must this bloc exist
        BlocProvider(
          create: (context) => getIt<ShowCheckoutDetailsCubit>(),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}

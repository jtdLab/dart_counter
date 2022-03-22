// CORE
import 'package:dart_counter/application/main/core/user/user_cubit.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/play/offline/watcher/play_offline_watcher_cubit.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';

class PlayOfflineFlow extends StatelessWidget {
  final OfflineGameSnapshot initialSnapshot;

  const PlayOfflineFlow({
    Key? key,
    required this.initialSnapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PlayOfflineWatcherCubit.getIt(initialSnapshot),
        ),
        BlocProvider(
          lazy: false, // TODO right but why??
          create: (context) => AdvancedSettingsBloc(
            context.read<PlayOfflineWatcherCubit>(),
          )..add(const AdvancedSettingsEvent.started()),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}

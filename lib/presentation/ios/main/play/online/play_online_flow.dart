// CORE
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/play/online/watcher/play_online_watcher_cubit.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';

class PlayOnlineFlow extends StatelessWidget {
  final OnlineGameSnapshot initialSnapshot;

  const PlayOnlineFlow({
    Key? key,
    required this.initialSnapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PlayOnlineWatcherCubit.getIt(initialSnapshot),
        ),
        BlocProvider(
          lazy: false, // TODO right but why??
          create: (context) => AdvancedSettingsBloc(
            context.read<PlayOnlineWatcherCubit>(),
          )..add(const AdvancedSettingsEvent.started()),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}

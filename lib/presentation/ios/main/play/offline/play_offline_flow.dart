// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/play/offline/watcher/play_offline_watcher_cubit.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';

class PlayOfflineFlow extends StatelessWidget {
  const PlayOfflineFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<PlayOfflineWatcherCubit>(),
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

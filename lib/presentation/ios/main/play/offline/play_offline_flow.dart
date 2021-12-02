// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/play/offline/watcher/play_offline_watcher_cubit.dart';

class PlayOfflineFlow extends StatelessWidget {
  const PlayOfflineFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PlayOfflineWatcherCubit>(),
      child: const AutoRouter(),
    );
  }
}

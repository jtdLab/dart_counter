// CORE
// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/play/online/watcher/play_online_watcher_cubit.dart';

class PlayOnlineFlow extends StatelessWidget {
  const PlayOnlineFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PlayOnlineWatcherCubit>(),
      child: const AutoRouter(),
    );
  }
}

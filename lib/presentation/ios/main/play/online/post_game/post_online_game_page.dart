// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOC
import 'package:dart_counter/application/play/offline/watcher/play_offline_watcher_cubit.dart';

// DOMAIN
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';

// SHARED WIDGETS
import '../../shared/post_game/widgets.dart';

// LOCAL WIDGETS

class PostOnlineGamePage extends StatelessWidget {
  const PostOnlineGamePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
      builder: (context, state) {
        return AppPage(
          navigationBar: AppNavigationBar(
            middle: Text(
              state.description().toUpperCase(),
            ),
          ),
          child: SingleChildScrollView(
            child: Provider.value(
              value: state,
              child: const PostGameWidget(),
            ),
          ),
        );
      },
    );
  }
}

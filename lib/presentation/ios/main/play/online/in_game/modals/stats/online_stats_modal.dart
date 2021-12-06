// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

import 'package:dart_counter/application/main/play/online/watcher/play_online_watcher_cubit.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/presentation/ios/main/play/shared/widgets.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class OnlineStatsModal extends StatelessWidget {
  const OnlineStatsModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      padding: modalPagePadding(context),
      //child: const SingleChildScrollView(
      child: const _StatsWidget(),
      //),
    );
  }
}

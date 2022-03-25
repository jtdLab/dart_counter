// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/presentation/ios/authenticated/play/shared/widgets.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class OfflineStatsModal extends StatelessWidget {
  final OfflineGameSnapshot snapshot;

  const OfflineStatsModal({
    Key? key,
    required this.snapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      padding: modalPagePadding(context),
      //child: const SingleChildScrollView(
      child: StatsWidget(players: snapshot.players),
      //),
    );
  }
}

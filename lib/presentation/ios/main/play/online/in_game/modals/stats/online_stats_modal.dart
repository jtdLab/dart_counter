// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/presentation/ios/main/play/shared/widgets.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class OnlineStatsModal extends StatelessWidget {
  final OnlineGameSnapshot snapshot;

  const OnlineStatsModal({
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

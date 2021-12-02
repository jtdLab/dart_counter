// CORE
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS

// LOCAL WIDGETS
import '../../../widgets.dart';
part 'widgets.dart';

class StatsModal extends StatelessWidget {
  const StatsModal({
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

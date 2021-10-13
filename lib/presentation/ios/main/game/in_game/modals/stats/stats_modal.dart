// CORE
import 'package:dart_counter/domain/play/player_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/in_game/stats/stats_bloc.dart';
import 'package:dart_counter/presentation/ios/main/shared.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class StatsModal extends StatelessWidget {
  const StatsModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatsBloc, StatsState>(
      builder: (context, state) {
        return AppPage(
          padding: modalPagePadding(context),
          //child: const SingleChildScrollView(
          child: const _StatsWidget(),
          //),
        );
      },
    );
  }
}

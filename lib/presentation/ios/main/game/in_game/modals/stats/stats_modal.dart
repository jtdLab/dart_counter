// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/in_game/stats/stats_bloc.dart';

// LOCAL WIDGETS
import './../../../shared.dart';
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

import 'package:dart_counter/application/in_game/stats/stats_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class StatsModal extends StatelessWidget {
  const StatsModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatsBloc, StatsState>(
      builder: (context, state) {
        return const AppPage(
          child: StatsWidget(),
        );
      },
    );
  }
}

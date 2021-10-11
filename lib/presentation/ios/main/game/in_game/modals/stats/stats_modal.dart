// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/in_game/stats/stats_bloc.dart';

// SHARED WIDGETS
import './../../../shared.dart';

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
        return const AppPage(
          child: SingleChildScrollView(
            child: _StatsWidget(),
          ),
        );
      },
    );
  }
}

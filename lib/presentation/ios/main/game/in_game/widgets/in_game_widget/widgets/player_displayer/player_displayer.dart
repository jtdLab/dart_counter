import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart' hide Center;
import 'widgets/widgets.dart';

class PlayerDisplayer extends StatelessWidget {
  const PlayerDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PlayerDisplayerBloc>(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Header(),
          const AppSpacer.normal(),
          Center(),
          const AppSpacer.normal(),
          Footer(),
        ],
      ),
    );
  }
}

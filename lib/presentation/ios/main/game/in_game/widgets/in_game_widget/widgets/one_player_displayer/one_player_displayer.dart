import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart' hide Center;
import 'widgets/widgets.dart';

class OnePlayerDisplayer extends StatelessWidget {
  const OnePlayerDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PlayerDisplayerBloc>(),
      child: AppColumn(
        spacing: size6(context),
        children: [
          const Expanded(
            flex: 3,
            child: Header(),
          ),
          const Expanded(
            flex: 6,
            child: Center(),
          ),
          const Expanded(
            flex: 4,
            child: Footer(),
          ),
        ],
      ),
    );
  }
}

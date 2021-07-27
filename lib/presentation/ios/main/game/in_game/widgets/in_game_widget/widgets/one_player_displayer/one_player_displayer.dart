import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class OnePlayerDisplayer extends StatelessWidget {
  const OnePlayerDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.red,
      child: Center(
        child: Text(
          toString(),
        ),
      ),
    );

    /**
     * return BlocProvider(
      create: (context) => getIt<PlayerDisplayerBloc>(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Header(),
          AppSpacer.normal(),
          Center(),
          AppSpacer.normal(),
          Footer(),
        ],
      ),
    );
     */
  }
}

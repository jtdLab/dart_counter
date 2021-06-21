import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter/cupertino.dart' hide Center;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';

class PlayerDisplayer extends StatelessWidget {
  const PlayerDisplayer({Key? key}) : super(key: key);

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

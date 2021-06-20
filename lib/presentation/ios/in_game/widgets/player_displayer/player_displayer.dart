import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_spacer.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/player_displayer/widgets/center/center.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/player_displayer/widgets/footer.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/player_displayer/widgets/header.dart';
import 'package:flutter/cupertino.dart' hide Center;
import 'package:flutter_bloc/flutter_bloc.dart';

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

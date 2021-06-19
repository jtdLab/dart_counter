import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_spacer.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/create_game_widget/widgets/dartbot_card.dart/dartbot_card.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/create_game_widget/widgets/game_settings_card/game_settings_card.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/create_game_widget/widgets/play_button.dart';
import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

import 'widgets/player_card/player_card.dart';

class CreateGameWidget extends StatelessWidget {
  const CreateGameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayBloc, PlayState>(
      builder: (context, state) => state.maybeMap(
        success: (success) => Column(
          children: [
            DartBotCard(),
            const AppSpacer.large(),
            PlayerCard(),
            const AppSpacer.large(),
            GameSettingsCard(),
            const AppSpacer.normal(),
            const PlayButton(),
          ],
        ),
        orElse: () => Container(), // TODO shouldnt happen
      ),
    );
  }
}

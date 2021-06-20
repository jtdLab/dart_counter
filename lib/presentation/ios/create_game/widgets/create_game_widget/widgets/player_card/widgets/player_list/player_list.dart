import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_column.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/create_game_widget/widgets/player_card/widgets/player_list/widgets/dartbot_item.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/create_game_widget/widgets/player_card/widgets/player_list/widgets/player_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerList extends StatelessWidget {
  const PlayerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayBloc, PlayState>(
      builder: (context, state) {
        return state.maybeMap(
          success: (success) {
            final game = success.game;
            return AppColumn(
              spacing: size6(context),
              children: game.players
                  .asList()
                  .map((player) =>
                      player.isDartBot ? DartBotItem() : PlayerItem())
                  .toList(),
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}

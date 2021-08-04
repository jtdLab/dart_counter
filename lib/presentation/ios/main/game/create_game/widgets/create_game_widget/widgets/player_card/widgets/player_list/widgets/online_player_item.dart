import 'package:dart_counter/domain/play/player.dart';
import 'package:dart_counter/domain/play/player_snapshot.dart';

import 'package:dart_counter/application/create_game/create_game_bloc.dart';

import 'package:dart_counter/presentation/ios/main/game/create_game/modals/modals.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';

class OnlinePlayerItem extends StatelessWidget {
  final OnlinePlayerSnapshot player;

  const OnlinePlayerItem({
    required Key key,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final index = state.game.players.indexOf(player);
      
        late final bool isDismissible;
        if (state.game.players.asList().any((player) => player is DartBot)) {
          isDismissible = state.game.players.size > 2;
        } else {
          isDismissible = state.game.players.size > 1;
        }

        return Column(
          children: [
            Dismissible(
              key: key!,
              direction: DismissDirection.endToStart,
              background: Container(
                color: AppColors.red,
              ),
              confirmDismiss: (_) async {
                if (isDismissible) {
                  return true;
                }
                return false;
              },
              onDismissed: (_) => context.read<CreateGameBloc>().add(
                    CreateGameEvent.playerRemoved(index: index),
                  ),
              child: AppCardItem.large(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const AppRoundedImage.normal(
                      imageName: AppImages.photoPlaceholderNew,
                    ),
                    Text(
                      player.name.toUpperCase(),
                    ),
                    AppIconButton(
                      onPressed: () {
                        showCupertinoModalBottomSheet(
                          backgroundColor: Colors.white70,
                          context: context,
                          builder: (context) => AdvancedSettingsModal(),
                        );
                      },
                      icon: Image.asset(
                        AppImages.settingsNew,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: size6(context)),
          ],
        );
      },
    );
  }
}

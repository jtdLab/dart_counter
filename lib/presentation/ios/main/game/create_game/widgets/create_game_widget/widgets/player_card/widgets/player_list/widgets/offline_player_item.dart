import 'package:dart_counter/domain/play/player.dart';

import 'package:dart_counter/application/create_game/create_game_bloc.dart';

import 'package:dart_counter/presentation/ios/main/game/create_game/modals/modals.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_text_field/app_text_field.dart';
import 'package:flutter/material.dart' show Colors;

class OfflinePlayerItem extends StatelessWidget {
  final OfflinePlayer player;

  const OfflinePlayerItem({
    required Key key,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final index = state.game.players.indexOf(player as Player);
        final isDismissible = state.game.players.size > 1;

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
                    const AppSpacer.normal(orientation: Orientation.horizontal),
                    const AppRoundedImage.normal(
                      imageName: AppImages.photo_placeholder_new,
                    ),
                    const AppSpacer.normal(orientation: Orientation.horizontal),
                    Expanded(
                      child: AppTextField(
                        text: player.name,
                        withErrorDisplayer: false,
                        placeholder: LocaleKeys.name.tr().toUpperCase(),
                        onChanged: (newName) =>
                            context.read<CreateGameBloc>().add(
                                  CreateGameEvent.playerNameUpdated(
                                    index: index,
                                    newName: newName,
                                  ),
                                ),
                      ),
                    ),
                    const AppSpacer.normal(orientation: Orientation.horizontal),
                    AppIconButton(
                      onPressed: () {
                        showCupertinoModalBottomSheet(
                          backgroundColor: Colors.white70,
                          context: context,
                          builder: (context) => AdvancedSettingsModal(),
                        );
                      },
                      icon: Image.asset(
                        AppImages.settings_new,
                      ),
                    ),
                    const AppSpacer.normal(orientation: Orientation.horizontal),
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

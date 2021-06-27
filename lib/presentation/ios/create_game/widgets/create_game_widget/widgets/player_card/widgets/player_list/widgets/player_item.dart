import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';

class PlayerItem extends StatelessWidget {
  final int index;

  const PlayerItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayBloc, PlayState>(
      builder: (context, state) {
        return state.maybeMap(
          success: (success) {
            final player = success.game.players[index];
            return Dismissible(
              key: Key('$toString()$index'),
              direction: DismissDirection.endToStart,
              background: Container(
                color: AppColors.red,
              ),
              confirmDismiss: (_) async {
                if (success.game.players.size > 1) {
                  return true;
                }
                return false;
              },
              onDismissed: (_) => context.read<PlayBloc>().add(
                    PlayEvent.playerRemoved(index: index),
                  ),
              child: AppCardItem.large(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const AppRoundedImage.normal(
                      imageName: AppImages.photo_placeholder_new,
                    ),
                    Text(
                      player.name.toUpperCase(),
                    ),
                    AppIconButton(
                      onPressed: () {
                        // TODO implement
                      },
                      icon: Image.asset(
                        AppImages.settings_new,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          orElse: () => throw UnexpectedStateError(),
        );
      },
    );
  }
}

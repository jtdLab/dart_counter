import 'package:dart_counter/domain/play/game.dart';

import 'package:dart_counter/application/core/play/play_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class ModePicker extends StatelessWidget {
  const ModePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayBloc, PlayState>(
      builder: (context, state) {
        return state.maybeMap(
          success: (success) {
            final game = success.game;
            return AppRow(
              spacing: size6(context),
              children: [
                Expanded(
                  child: AppActionButton.normal(
                    color: game.mode == Mode.firstTo
                        ? AppColors.orange_new
                        : AppColors.white,
                    onPressed: () => context.read<PlayBloc>().add(
                          const PlayEvent.modeSet(
                            newMode: Mode.firstTo,
                          ),
                        ),
                    text: 'FIRST TO',
                  ),
                ),
                Expanded(
                  child: AppActionButton.normal(
                    color: game.mode == Mode.bestOf
                        ? AppColors.orange_new
                        : AppColors.white,
                    onPressed: () => context.read<PlayBloc>().add(
                          const PlayEvent.modeSet(
                            newMode: Mode.bestOf,
                          ),
                        ),
                    text: 'BEST OF',
                  ),
                ),
              ],
            );
          },
          orElse: () => throw UnexpectedStateError(),
        );
      },
    );
  }
}

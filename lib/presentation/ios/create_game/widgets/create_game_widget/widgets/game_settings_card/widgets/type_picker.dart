import 'package:dart_counter/domain/play/game.dart';

import 'package:dart_counter/application/core/play/play_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class TypePicker extends StatelessWidget {
  const TypePicker({Key? key}) : super(key: key);

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
                    color: game.type == Type.legs
                        ? AppColors.orange_new
                        : AppColors.white,
                    onPressed: () => context.read<PlayBloc>().add(
                          const PlayEvent.typeSet(
                            newType: Type.legs,
                          ),
                        ),
                    text: 'LEGS',
                  ),
                ),
                Expanded(
                  child: AppActionButton.normal(
                    color: game.type == Type.sets
                        ? AppColors.orange_new
                        : AppColors.white,
                    onPressed: () => context.read<PlayBloc>().add(
                          const PlayEvent.typeSet(
                            newType: Type.sets,
                          ),
                        ),
                    text: 'SETS',
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

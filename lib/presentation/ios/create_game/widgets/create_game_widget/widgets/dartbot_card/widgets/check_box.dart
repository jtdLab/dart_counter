import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';

class CheckBox extends StatelessWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayBloc, PlayState>(
      builder: (context, state) {
        return state.maybeMap(
          success: (success) {
            final game = success.game;
            if (game.hasDartBot()) {
              return AppIconButton(
                padding: EdgeInsets.zero,
                onPressed: () => context
                    .read<PlayBloc>()
                    .add(const PlayEvent.dartBotRemoved()),
                icon: Image.asset(
                  AppImages.check_mark_light_new,
                ),
              );
            } else {
              return AppIconButton(
                padding: EdgeInsets.zero,
                onPressed: () => context
                    .read<PlayBloc>()
                    .add(const PlayEvent.dartBotAdded()),
                icon: Image.asset(
                  AppImages.check_mark_light_unchecked_new,
                ),
              );
            }
          },
          orElse: () => throw UnexpectedStateError(),
        );
      },
    );
  }
}

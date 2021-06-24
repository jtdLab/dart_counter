import 'package:dart_counter/domain/play/game.dart';

import 'package:dart_counter/application/core/play/play_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class InGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlayBloc, PlayState>(
      listener: (context, state) {
        if (state is Success) {
          final game = state.game;
          if (game.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
          } else if (game.status == Status.finished) {
            context.router.replace(const PostGamePageRoute());
          }
        }
      },
      builder: (context, state) {
        return state.maybeMap(
          success: (success) {
            final game = success.game;
            return AppPage(
              navigationBar: AppNavigationBar(
                leading: const CancelGameButton(),
                middle: Text(
                  game.description(),
                ),
                trailing: const StatsButton(),
              ),
              child: const InGameWidget(),
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}

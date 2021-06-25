import 'package:dart_counter/application/core/play/play_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class PostGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayBloc, PlayState>(
      builder: (context, state) {
        return state.maybeMap(
          success: (success) {
            final game = success.game;

            return AppPage(
              navigationBar: AppNavigationBar(
                middle: Text(
                  game.description().toUpperCase(),
                ),
              ),
              child: PostGameWidget(),
            );
          },
          orElse: () => throw UnexpectedStateError(),
        );
      },
    );
  }
}

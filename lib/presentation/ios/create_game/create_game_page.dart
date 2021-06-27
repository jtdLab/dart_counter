import 'package:dart_counter/domain/play/game.dart';

import 'package:dart_counter/application/core/play/play_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class CreateGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlayBloc, PlayState>(
      listener: (context, state) {
        if (state is Success) {
          final game = state.game;
          if (game.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
          } else if (game.status == Status.running) {
            context.router.replace(const InGamePageRoute());
          }
        }
      },
      builder: (context, state) {
        return AppPage(
          maxHeight: 918, //806, // TODO
          onTap: () => FocusScope.of(context).unfocus(),
          navigationBar: AppNavigationBar(
            leading: const CancelGameButton(),
            middle: Text(
              LocaleKeys.createGame.tr().toUpperCase(),
            ),
          ),
          child: CreateGameWidget(),
        );
      },
    );
  }
}

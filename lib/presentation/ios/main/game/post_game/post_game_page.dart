import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/post_game/post_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class PostGamePage extends StatelessWidget {
  const PostGamePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostGameBloc>(),
      child: AppPage(
        navigationBar: AppNavigationBar(
          middle: BlocBuilder<PostGameBloc, PostGameState>(
            builder: (context, state) => Text(
              state.game.description().toUpperCase(),
            ),
          ),
        ),
        child: const PostGameWidget(),
      ),
    );
  }
}

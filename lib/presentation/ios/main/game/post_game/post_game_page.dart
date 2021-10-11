// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/post_game/post_game_bloc.dart';

// SHARED WIDGETS
import './../shared.dart';

// LOCAL WIDGETS
part 'widgets.dart';

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
              state.gameSnapshot.description().toUpperCase(),
            ),
          ),
        ),
        child: const SingleChildScrollView(
          child: _PostGameWidget(),
        ),
      ),
    );
  }
}

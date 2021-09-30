// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/post_game/post_game_bloc.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/stats/stats_widget.dart';

// LOCALE WIDGETS
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
              state.game.description().toUpperCase(),
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

// CORE
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// SHARED WIDGETS
import './../shared.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class PostGamePage extends StatelessWidget {
  final GameSnapshot gameSnapshot;

  const PostGamePage({
    Key? key,
    required this.gameSnapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: gameSnapshot,
      child: AppPage(
        navigationBar: AppNavigationBar(
          middle: Text(
            gameSnapshot.description().toUpperCase(),
          ),
        ),
        child: const SingleChildScrollView(
          child: _PostGameWidget(),
        ),
      ),
    );
  }
}

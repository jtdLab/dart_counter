// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// DOMAIN
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';

// SHARED WIDGETS
import '../../shared/post_game/widgets.dart';

// LOCAL WIDGETS

class PostOfflineGamePage extends StatelessWidget {
  final OfflineGameSnapshot snapshot;

  const PostOfflineGamePage({
    Key? key,
    required this.snapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      navigationBar: AppNavigationBar(
        middle: Text(
          snapshot.description().toUpperCase(),
        ),
      ),
      child: SingleChildScrollView(
        child: PostGameWidget(
          gameSnapshot: snapshot,
        ),
      ),
    );
  }
}

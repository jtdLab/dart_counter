// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// DOMAIN
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';

// SHARED WIDGETS
import '../../shared/post_game/widgets.dart';

// LOCAL WIDGETS

class PostOnlineGamePage extends StatelessWidget {
  final OnlineGameSnapshot snapshot;

  const PostOnlineGamePage({
    Key? key,
    required this.snapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
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

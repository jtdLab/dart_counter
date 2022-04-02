// CORE
import 'package:dart_counter/application/authenticated/core/friends/friends_cubit.dart'
    as watcher;
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/friends/friends_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/friend.dart';

// LOCAL WIDGETS
import '../../../shared/widgets.dart';
part 'widgets.dart';

class FriendsOverviewPage extends StatelessWidget {
  const FriendsOverviewPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FriendsOverviewView();
  }
}

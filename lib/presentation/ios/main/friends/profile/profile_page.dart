// CORE
import 'package:dart_counter/application/main/core/user/user_cubit.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOC
import 'package:dart_counter/application/main/game_history/game_history_bloc.dart';
import 'package:dart_counter/application/main/friends/friends_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/user/career_stats.dart';

// LOCAL WIDGETS
import '../../shared/widgets.dart';
part 'widgets.dart';

class FriendsProfilePage extends StatelessWidget {
  const FriendsProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppPage(
      navigationBar: AppNavigationBar(
        leading: BackButton(),
        middle: _NameDisplayer(),
      ),
      child: SingleChildScrollView(
        child: _FriendsProfileWidget(),
      ),
    );
  }
}

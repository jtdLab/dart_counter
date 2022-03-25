// CORE
import 'package:dart_counter/application/main/core/friends/friends_cubit.dart' as watcher;
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/friends/friends_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/friend.dart';

// MODALS
import '../modals/search_user/search_user_modal.dart';
import '../modals/more/more_modal.dart';

// LOCAL WIDGETS
import '../../../shared/widgets.dart';
part 'widgets.dart';

class FriendsOverviewPage extends StatelessWidget {
  const FriendsOverviewPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      onTap: () => FocusScope.of(context).unfocus(),
      navigationBar: AppNavigationBar(
        leading: const BackButton(),
        middle: Text(context.l10n.friends.toUpperCase()),
        trailing: AppNavigationBarButton(
          noPaddingRight: true,
          onPressed: () {
            context.router.push(const SearchUserModalRoute());
          },
          child: Image.asset(
            AppImages.lupeNew,
          ),
        ),
      ),
      child: const SingleChildScrollView(
        child: _OverviewWidget(),
      ),
    );
  }
}

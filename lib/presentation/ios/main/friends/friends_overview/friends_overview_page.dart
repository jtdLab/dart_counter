import 'package:dart_counter/application/friends/friends_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

import 'modals/modals.dart';
import 'widgets/widgets.dart';

class FriendsOverviewPage extends StatelessWidget {
  const FriendsOverviewPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<FriendsBloc, FriendsState>(
      listener: (context, state) {
        if (state.selectedFriend != null) {
          context.router.navigate(const FriendsProfilePageRoute());
        }
      },
      child: AppPage(
        onTap: () => FocusScope.of(context).unfocus(),
        navigationBar: AppNavigationBar(
          leading: const BackButton(),
          middle: Text(LocaleKeys.friends.tr().toUpperCase()),
          trailing: AppNavigationBarButton(
            onPressed: () => showCupertinoModalBottomSheet(
              context: context,
              builder: (context) => const SearchUserModal(),
            ),
            child: Image.asset(
              AppImages.lupeNew,
            ),
          ),
        ),
        child: const SingleChildScrollView(
          child: FriendsOverviewWidget(),
        ),
      ),
    );
  }
}

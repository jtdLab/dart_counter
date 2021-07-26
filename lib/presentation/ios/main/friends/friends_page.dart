import 'package:dart_counter/presentation/ios/core/core.dart';

import 'modals/modals.dart';
import 'widgets/widgets.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
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
        child: FriendsWidget(),
      ),
    );
  }
}

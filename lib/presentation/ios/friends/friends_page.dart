import 'package:dart_counter/application/core/friend_request/friend_request_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class FriendsPage extends StatefulWidget {
  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  void initState() {
    context
        .read<FriendRequestBloc>()
        .add(const FriendRequestEvent.newInvitationsRead());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppPage(
      onTap: () => FocusScope.of(context).unfocus(),
      navigationBar: AppNavigationBar(
        leading: const BackButton(),
        middle: Text(LocaleKeys.friends.tr().toUpperCase()),
      ),
      child: FriendsWidget(),
    );
  }
}

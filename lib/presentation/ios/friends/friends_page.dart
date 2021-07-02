import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/friends/friends_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<FriendsBloc>()..add(const FriendsEvent.watchStarted()),
      child: AppPage(
        onTap: () => FocusScope.of(context).unfocus(),
        navigationBar: AppNavigationBar(
          leading: const BackButton(),
          middle: Text(LocaleKeys.friends.tr().toUpperCase()),
        ),
        child: FriendsWidget(),
      ),
    );
  }
}

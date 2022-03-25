// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOC
import 'package:dart_counter/application/authenticated/friends/friends_bloc.dart';

class FriendsFlow extends StatelessWidget {
  const FriendsFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          FriendsBloc.getIt()..add(const FriendsEvent.started()),
      child: const AutoRouter(),
    );
  }
}
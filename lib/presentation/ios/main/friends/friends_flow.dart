// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOC
import 'package:dart_counter/application/main/friends/friends_bloc.dart';

class FriendsFlow extends StatelessWidget {
  const FriendsFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<FriendsBloc>()..add(const FriendsEvent.started()),
      child: const AutoRouter(),
    );
  }
}

// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOC
import 'package:dart_counter/application/authenticated/friends/friends_bloc.dart';

class FriendsFlow extends StatelessWidget implements AutoRouteWrapper {
  const FriendsFlow({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          FriendsBloc.getIt()..add(const FriendsEvent.started()),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

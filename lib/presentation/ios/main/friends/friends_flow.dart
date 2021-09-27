import 'package:dart_counter/application/friends/friends_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

class FriendsFlow extends StatelessWidget {
  const FriendsFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FriendsBloc>(),
      child: const AutoRouter(),
    );
  }
}

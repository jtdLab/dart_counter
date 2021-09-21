import 'package:dart_counter/application/core/friends/friends_bloc.dart';
import 'package:dart_counter/application/core/invitations/invitations_bloc.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/application/core/user/user_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class MainFlow extends StatelessWidget {
  const MainFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<UserBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<InvitationsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<FriendsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<PlayBloc>(),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}

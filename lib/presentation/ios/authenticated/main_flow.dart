// CORE
import 'package:dart_counter/application/main/core/friends/friends_cubit.dart';
import 'package:dart_counter/application/main/core/game_invitations/game_invitations_cubit.dart';
import 'package:dart_counter/application/main/core/user/user_cubit.dart';
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
          create: (context) => UserCubit.getIt(),
        ),
        BlocProvider(
          create: (context) => FriendsCubit.getIt(),
        ),
        BlocProvider(
          create: (context) => GameInvitationsCubit.getIt(),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}

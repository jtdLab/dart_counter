// CORE
import 'package:dart_counter/application/main/core/friends/friends_cubit.dart';
import 'package:dart_counter/application/main/core/game_invitations/game_invitations_cubit.dart';
import 'package:dart_counter/application/main/core/user/user_cubit.dart';
import 'package:dart_counter/application/main/home/create_online_game/create_online_game_cubit.dart';
// BLOCS
import 'package:dart_counter/application/main/home/home_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';


// LOCAL WIDGETS
import '../shared/widgets.dart';

part 'widgets.dart';

class HomePage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc.getIt(
            context.read<UserCubit>(),
            context.read<FriendsCubit>(),
            context.read<GameInvitationsCubit>(),
          )..add(const HomeEvent.started()),
        ),
        BlocProvider(
          create: (context) => CreateOnlineGameCubit.getIt(),
        )
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateOnlineGameCubit, CreateOnlineGameState>(
      listener: (context, state) {
        state.mapOrNull(
          success: (success) =>
              context.router.replace(const PlayOnlineFlowRoute()),
          // TODO localize + test
          failure: (failure) => showToast('Could not create game.'),
        );
      },
      child: BlocSelector<HomeBloc, HomeState, bool>(
        selector: (state) => state is HomeLoadSuccess,
        builder: (context, hasNavigationBar) {
          return AppPage(
            navigationBar: hasNavigationBar
                ? AppNavigationBar(
                    leading: const _SettingsButton(),
                    trailing: Row(
                      children: const [
                        _GameInvitationsButton(),
                        _FriendsButton(),
                        _StatsButton(),
                      ],
                    ),
                  )
                : null,
            child: const _HomeWidget(),
          );
        },
      ),
    );
  }
}

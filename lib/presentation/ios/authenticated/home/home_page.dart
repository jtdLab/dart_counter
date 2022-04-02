// CORE
import 'package:dart_counter/application/authenticated/core/friends/friends_cubit.dart';
import 'package:dart_counter/application/authenticated/core/game_invitations/game_invitations_cubit.dart';
import 'package:dart_counter/application/authenticated/core/user/user_cubit.dart';
import 'package:dart_counter/application/authenticated/home/create_offline_game/create_offline_game_cubit.dart';
import 'package:dart_counter/application/authenticated/home/create_online_game/create_online_game_cubit.dart';
// BLOCS
import 'package:dart_counter/application/authenticated/home/home_bloc.dart';
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
        // TODO this to blocs can be part of home bloc
        BlocProvider(
          create: (context) => CreateOnlineGameCubit.getIt(),
        ),
        BlocProvider(
          create: (context) => CreateOfflineGameCubit.getIt(
            context.read<UserCubit>(),
          ),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CreateOnlineGameCubit, CreateOnlineGameState>(
          listener: (context, state) {
            state.mapOrNull(
              success: (success) {
                final initialSnapshot = success.initialSnapshot;

                context.router.replace(
                  PlayOnlineFlowRoute(
                    children: [
                      CreateOnlineGameFlowRoute(
                        children: [
                          CreateOnlineGamePageRoute(
                            initialSnapshot: initialSnapshot,
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
              // TODO localize + test
              failure: (failure) => showToast('Could not create game.'),
            );
          },
        ),
        BlocListener<CreateOfflineGameCubit, CreateOfflineGameState>(
          listener: (context, state) {
            state.mapOrNull(
              success: (success) {
                final initialSnapshot = success.initialSnapshot;

                context.router.push(
                  PlayOfflineFlowRoute(
                    children: [
                      CreateOfflineGameFlowRoute(
                        children: [
                          CreateOfflineGamePageRoute(
                            initialSnapshot: initialSnapshot,
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ],
      child: const HomeView(),
    );
  }
}

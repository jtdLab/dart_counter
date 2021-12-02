// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/home/home_bloc.dart';
import 'package:dart_counter/application/main/home/create_online_game/create_online_game_cubit.dart';

// LOCAL WIDGETS
import '../shared/widgets.dart';
part 'widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HomeBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CreateOnlineGameCubit>(),
        )
      ],
      child: BlocListener<CreateOnlineGameCubit, CreateOnlineGameState>(
        listener: (context, state) {
          state.mapOrNull(
              success: (success) =>
                  context.router.replace(const PlayOnlineFlowRoute()),
              failure: (failure) {
                // TODO show toast with error msg why could not creat egame
              });
        },
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.map(
              loadInProgress: (loadInProgress) =>
                  const AppPage(child: LoadingWidget()),
              loadSuccess: (loadSuccess) {
                return Provider.value(
                  value: loadSuccess,
                  child: AppPage(
                    navigationBar: AppNavigationBar(
                      leading: const _SettingsButton(),
                      trailing: Row(
                        children: const [
                          _GameInvitationsButton(),
                          _FriendsButton(),
                          _StatsButton(),
                        ],
                      ),
                    ),
                    child: _HomeWidget(),
                  ),
                );
              },
              loadFailure: (loadFailure) {
                return const Text('TODO');
              },
            );
          },
        ),
      ),
    );
  }
}

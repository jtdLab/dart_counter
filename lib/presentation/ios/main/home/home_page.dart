// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/home/home_bloc.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>(),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          final gameSnapshot = state.gameSnapshot;
          if (gameSnapshot != null) {
            context.router.replace(const GameFlowRoute());
          }
        },
        builder: (context, state) {
          if (state.loading) {
            return const AppPage(child: LoadingWidget());
          } else {
            return AppPage(
              navigationBar: AppNavigationBar(
                leading: const _SettingsButton(),
                trailing: Row(
                  children: [
                    const _GameInvitationsButton(),
                    const _FriendsButton(),
                    const _StatsButton(),
                  ],
                ),
              ),
              child: _HomeWidget(),
            );
          }
        },
      ),
    );
  }
}

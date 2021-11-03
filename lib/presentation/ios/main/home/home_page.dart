// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/home/home_bloc.dart';
import 'package:dart_counter/application/training/training_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/training/single/game_snapshot.dart';

// LOCAL WIDGETS
import './../shared.dart';
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
          /**
          * 
            final trainingGameSnapshot = state.trainingGameSnapshot;
            if (trainingGameSnapshot != null) {
              context.router.replace(const TrainingFlowRoute());
            }
          */
        },
        builder: (context, state) {
          if (state.loading) {
            return const AppPage(child: LoadingWidget());
          } else {
            return AppPage(
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
            );
          }
        },
      ),
    );
  }
}

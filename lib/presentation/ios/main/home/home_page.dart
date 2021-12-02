// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/home/home_bloc.dart';
import 'package:dart_counter/application/main/training/training_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';

// LOCAL WIDGETS
import '../shared/widgets.dart';
part 'widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>(),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          state.mapOrNull(
            loadSuccess: (loadSuccess) {
              final gameSnapshot = loadSuccess.gameSnapshot;
              if (gameSnapshot != null) {
                if (gameSnapshot is OfflineGameSnapshot) {
                  context.router.replace(const PlayOfflineFlowRoute());
                } else {
                  context.router.replace(const PlayOnlineFlowRoute());
                }
              }
              /**
          * 
            final trainingGameSnapshot = state.trainingGameSnapshot;
            if (trainingGameSnapshot != null) {
              context.router.replace(const TrainingFlowRoute());
            }
          */
            },
          );
        },
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
    );
  }
}

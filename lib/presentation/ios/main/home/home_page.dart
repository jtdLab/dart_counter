import 'package:dart_counter/application/home/home_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>(),
      child: BlocConsumer<HomeBloc, HomeState>(
        listenWhen: (oldState, newState) => newState is HomeLoadSuccess,
        listener: (context, state) {
          final game = (state as HomeLoadSuccess).game;
          if (game != null) {
            context.router.replace(const GameFlowRoute());
          }
        },
        builder: (context, state) {
          return state.map(
            loadInProgress: (_) => const LoadingWidget(),
            loadSuccess: (_) {
              return AppPage(
                navigationBar: AppNavigationBar(
                  leading: const SettingsButton(),
                  trailing: Row(
                    children: const [
                      InvitationButton(),
                      AppSpacer.large(
                        orientation: Orientation.horizontal,
                      ),
                      FriendButton(),
                      AppSpacer.large(
                        orientation: Orientation.horizontal,
                      ),
                      StatsButton(),
                    ],
                  ),
                ),
                child: HomeWidget(),
              );
            },
            failure: (_) => const Center(
              child: Text('Error loading TODO'),
            ),
          );
        },
      ),
    );
  }
}

// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/home/home_bloc.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/loading_widget.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/profile_image_displayer.dart';

// LOCAL WIDGETS
part 'widgets.dart';

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
          return AppPage(
            navigationBar: state.map(
              loadInProgress: (_) => null,
              loadSuccess: (_) => AppNavigationBar(
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
              failure: (_) => null,
            ),
            child: state.map(
              loadInProgress: (_) => const LoadingWidget(),
              loadSuccess: (_) => HomeWidget(),
              failure: (_) => const Center(
                child: Text('Error loading TODO'),
              ),
            ),
          );
        },
      ),
    );
  }
}

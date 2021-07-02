import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/home/home_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<HomeBloc>()..add(const HomeEvent.watchStarted()),
      child: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.game != null) {
            context.router.replace(const CreateGamePageRoute());
          }
        },
        child: AppPage(
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
        ),
      ),
    );
  }
}

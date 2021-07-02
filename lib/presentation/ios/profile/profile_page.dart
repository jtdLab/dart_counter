import 'package:dart_counter/application/profile/profile_bloc.dart';
import 'package:dart_counter/injection.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

import 'widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProfileBloc>()..add(const ProfileEvent.watchStarted()),
      child: AppPage(
        navigationBar: const AppNavigationBar(
          leading: BackButton(),
          middle: NameDisplayer(),
          trailing: GameHistoryButton(),
        ),
        child: ProfileWidget(),
      ),
    );
  }
}

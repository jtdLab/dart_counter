import 'package:dart_counter/application/profile/profile_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileBloc>(),
      child: const AppPage(
        navigationBar: AppNavigationBar(
          leading: BackButton(),
          middle: NameDisplayer(),
          trailing: GameHistoryButton(),
        ),
        child: SingleChildScrollView(
          child: ProfileWidget(),
        ),
      ),
    );
  }
}

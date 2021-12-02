// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/profile/profile_bloc.dart';
import 'package:dart_counter/application/main/game_history/game_history_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/user/career_stats.dart';

// LOCAL WIDGETS
import '../shared/widgets.dart';
part 'widgets.dart';

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
          middle: _NameDisplayer(),
         
        ),
        child: _ProfileWidget(),
      ),
    );
  }
}

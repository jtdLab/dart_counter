// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOC
import 'package:dart_counter/application/profile/profile_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/user/career_stats.dart';

// LOCAL WIDGETS
import './../../shared.dart';
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
          trailing: _GameHistoryButton(),
        ),
        child: SingleChildScrollView(
          child: _FriendsProfileWidget(),
        ),
      ),
    );
  }
}

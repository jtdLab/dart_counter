// CORE
import 'package:dart_counter/application/authenticated/core/user/user_cubit.dart';
import 'package:dart_counter/domain/user/trend.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/profile/profile_bloc.dart';
import 'package:dart_counter/application/authenticated/game_history/game_history_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/user/career_stats.dart';

// LOCAL WIDGETS
import '../shared/widgets.dart';
part 'widgets.dart';

class ProfilePage extends StatelessWidget implements AutoRouteWrapper {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc.getIt(
        context.read<UserCubit>(),
      ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const ProfileView();
  }
}

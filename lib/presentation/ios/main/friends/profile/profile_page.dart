// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOC
import 'package:dart_counter/application/profile/profile_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/user/career_stats.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/back_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/profile_image_displayer.dart';

// LOCALE WIDGETS
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
          middle: NameDisplayer(),
          trailing: GameHistoryButton(),
        ),
        child: SingleChildScrollView(
          child: FriendsProfileWidget(),
        ),
      ),
    );
  }
}

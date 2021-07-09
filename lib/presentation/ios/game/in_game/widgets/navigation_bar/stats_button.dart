import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/in_game/stats/stats_bloc.dart';

import 'package:dart_counter/presentation/ios/game/in_game/modals/modals.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/widgets/app_navigation_bar_button.dart';

class StatsButton extends StatelessWidget {
  const StatsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      onPressed: () {
        showCupertinoModalBottomSheet(
          expand: true,
          context: context,
          builder: (context) => BlocProvider(
            create: (context) => getIt<StatsBloc>(),
            child: const StatsModal(),
          ),
        );
      },
      child: Image.asset(
        AppImages.stats_new,
      ),
    );
  }
}

import 'package:dart_counter/application/home/home_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class PlayOfflineButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      onPressed: () => context
          .read<HomeBloc>()
          .add(const HomeEvent.createOfflineGamePressed()),
      color: AppColors.white,
      fontColor: AppColors.black,
      icon: Image.asset(AppImages.robotNew),
      text: '${LocaleKeys.play.tr()} ${LocaleKeys.offline.tr()}'.toUpperCase(),
    );
  }
}

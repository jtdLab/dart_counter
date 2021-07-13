import 'package:dart_counter/application/home/home_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class PlayOnlineButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      onPressed: () => context
          .read<HomeBloc>()
          .add(const HomeEvent.createOnlineGamePressed()),
      color: AppColors.orange_new,
      fontColor: AppColors.black,
      icon: Image.asset(AppImages.players_new),
      text: '${LocaleKeys.play.tr()} ${LocaleKeys.online.tr()}'.toUpperCase(),
    );
  }
}
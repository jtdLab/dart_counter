import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_action_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayOfflineButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      onPressed: () => context
          .read<PlayBloc>()
          .add(const PlayEvent.gameCreated(online: false)),
      color: AppColors.white,
      fontColor: AppColors.black,
      icon: Image.asset(AppImages.robot_new),
      text: '${LocaleKeys.play.tr()} ${LocaleKeys.offline.tr()}'.toUpperCase(),
    );
  }
}

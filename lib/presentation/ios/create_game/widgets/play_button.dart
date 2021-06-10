import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_action_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class PlayButton extends StatelessWidget {
  final VoidCallback onPressed;

  const PlayButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      onPressed: onPressed,
      icon: Image.asset(AppImages.target_new),
      text: LocaleKeys.play.tr().toUpperCase(),
    );
  }
}

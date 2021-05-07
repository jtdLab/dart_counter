import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/home/widgets/home_button.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

class SettingsButton extends StatelessWidget {
  final AutoSizeGroup? group;

  const SettingsButton({Key? key, this.group}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeButton(
      onPressed: () => context.router.push(const SettingsPageRoute()),
      builder: (context, boxConstraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              AppImages.iconSettings,
              fit: BoxFit.fill,
              width: 50,
              height: 50,
            ),
            const Spacer(),
            AutoSizeText(
              LocaleKeys.settings.tr().toUpperCase(),
              maxLines: 1,
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w900,
                  color: AppColors.white),
            ),
            const Spacer(),
          ],
        );
      },
    );
  }
}

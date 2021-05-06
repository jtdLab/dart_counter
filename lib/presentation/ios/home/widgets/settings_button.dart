import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/home/widgets/home_button.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';

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
              'Settings todo',
              maxLines: 1,
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white),
            ),
            const Spacer(),
          ],
        );
      },
    );
  }
}

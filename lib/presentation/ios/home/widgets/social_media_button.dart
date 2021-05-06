import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/home/widgets/home_button.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';

class SocialMediaButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButton(
      onPressed: () => context.router.push(const SocialMediaPageRoute()),
      builder: (context, boxConstraints) {
        return Column(
          children: [
            Row(
              children: [
                Image.asset(AppImages.iconFacebook),
                Image.asset(AppImages.iconInstagram),
                Image.asset(AppImages.iconYoutube),
              ],
            ),
            AutoSizeText('Social Media todo'),
          ],
        );
      },
    );
  }
}

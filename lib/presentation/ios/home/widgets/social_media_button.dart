import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/home/widgets/home_button.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

class SocialMediaButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButton(
      onPressed: () => context.router.push(const SocialMediaPageRoute()),
      builder: (context, boxConstraints) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.iconFacebook,
                      fit: BoxFit.fill,
                      width: 50,
                      height: 50,
                    ),
                    Image.asset(
                      AppImages.iconInstagram,
                      fit: BoxFit.fill,
                      width: 50,
                      height: 50,
                    ),
                    Image.asset(
                      AppImages.iconYoutube,
                      fit: BoxFit.fill,
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              AutoSizeText(
                LocaleKeys.socialMedia.tr().toUpperCase(),
                maxLines: 1,
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w900,
                    color: AppColors.white),
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}

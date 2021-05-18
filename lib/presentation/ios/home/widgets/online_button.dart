import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/home/widgets/home_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

class OnlineButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButton(
      onPressed: () {},
      builder: (context, boxConstraints) {
        return Row(
          children: [
            Image.asset(AppImages.target),
            Expanded(
              flex: 190,
              child: Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  direction: Axis.vertical,
                  spacing: -15,
                  children: [
                    Text(
                      LocaleKeys.online.tr().toUpperCase(),
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 50,
                      ),
                    ),
                    Text(
                      LocaleKeys.play.tr().toUpperCase(),
                      style: TextStyle(
                        color: AppColors.yellow,
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
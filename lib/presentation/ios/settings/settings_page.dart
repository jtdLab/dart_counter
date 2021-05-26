import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/account_card/account_card.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/language_card/widgets/language_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:auto_route/auto_route.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
          child: Column(
            children: [
              Row(
                children: [
                  CupertinoButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    child: Image.asset(AppImages.chevron_back_new),
                  ),
                  const Spacer(),
                  Text(
                    LocaleKeys.settings.tr().toUpperCase(),
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Spacer(),
                  CupertinoButton(
                    onPressed: () {},
                    child: Image.asset(AppImages.lupe_new),
                  ),
                ],
              ),
              SizedBox(
                height: responsiveDouble(
                  context: context,
                  mobile:
                      ResponsiveDouble(normal: 40, large: 50, extraLarge: 60),
                ),
              ),
              LanguageCard(),
              SizedBox(
                height: responsiveDouble(
                  context: context,
                  mobile:
                      ResponsiveDouble(normal: 40, large: 50, extraLarge: 60),
                ),
              ),
              AccountCard(),
              SizedBox(
                height: responsiveDouble(
                  context: context,
                  mobile:
                      ResponsiveDouble(normal: 40, large: 50, extraLarge: 60),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

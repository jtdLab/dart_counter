import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/account_card/account_card.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/language_card/language_card.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/photo_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          minSize: 0,
          onPressed: () {
            context.router.pop();
          },
          child: Image.asset(
            AppImages.chevron_back_new,
            width: responsiveDouble(
              context: context,
              mobile: ResponsiveDouble(
                small: 15,
                normal: 20,
                large: 25,
                extraLarge: 30,
              ),
            ),
            height: responsiveDouble(
              context: context,
              mobile: ResponsiveDouble(
                small: 15,
                normal: 20,
                large: 25,
                extraLarge: 30,
              ),
            ),
          ),
        ),
        middle: Text(
          LocaleKeys.settings.tr().toUpperCase(),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, boxConstraints) => SingleChildScrollView(
          child: SizedBox(
            height: boxConstraints.maxHeight,
            width: boxConstraints.maxWidth,
            child: Column(
              children: [
                const Spacer(),
                PhotoWidget(),
                const Spacer(),
                LanguageCard(),
                const Spacer(),
                AccountCard(),
                const Spacer(),
                AppPrimaryButton(
                  text: LocaleKeys.signOut.tr(),
                  color: AppColors.red,
                  onPressed: () =>
                      context.read<AuthBloc>().add(const AuthEvent.signedOut()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/rounded_image.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/account_card/account_card.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/language_card/language_card.dart';
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
        leading: AppNavigationBarButton(
          onPressed: () => context.router.pop(),
          child: Image.asset(
            AppImages.chevron_back_new,
          ),
        ),
        middle: Text(
          LocaleKeys.settings.tr().toUpperCase(),
        ),
      ),
      child: Column(
        children: [
          const Spacer(),
          const RoundedImage.extraLarge(
              imageName: AppImages.photo_placeholder_new),
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
    );
  }
}

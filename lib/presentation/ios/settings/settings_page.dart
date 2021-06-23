import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state == const AuthState.unauthenticated()) {
          context.router.replace(const AuthPageRoute());
        }
      },
      child: AppPage(
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
            const ImageDisplayer(),
            const Spacer(),
            LanguageCard(),
            const Spacer(),
            AccountCard(),
            const Spacer(),
            AppPrimaryButton(
              text: LocaleKeys.signOut.tr(),
              color: AppColors.red,
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
              },
            ),
          ],
        ),
      ),
    );
  }
}

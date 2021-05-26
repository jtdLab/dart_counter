import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:dart_counter/presentation/ios/settings/modals/change_email_modal.dart';
import 'package:dart_counter/presentation/ios/settings/modals/change_password_modal.dart';
import 'package:dart_counter/presentation/ios/settings/modals/change_username_modal.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/account_card/widgets/account_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AccountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state == const AuthState.unauthenticated()) {
          context.router.replaceAll([const AuthWidgetRoute()]);
        }
      },
      child: AppCard(
        headerHeight: 50,
        middle: AutoSizeText(
          LocaleKeys.account.tr().toUpperCase(),
          maxFontSize: 14,
          minFontSize: 8,
          maxLines: 1,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: AppColors.white,
          ),
        ),
        bodyHeight: 200,
        body: Column(
          children: [
            const Spacer(),
            Expanded(
              child: AccountItem(
                title: LocaleKeys.username.tr(),
                onPressed: () {
                  showCupertinoModalBottomSheet(
                    context: context,
                    builder: (context) => ChangeUsernameModal(),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: AccountItem(
                title: LocaleKeys.password.tr(),
                onPressed: () {
                  showCupertinoModalBottomSheet(
                    context: context,
                    builder: (context) => ChangePasswordModal(),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: AccountItem(
                title: LocaleKeys.email.tr(),
                onPressed: () {
                  showCupertinoModalBottomSheet(
                    context: context,
                    builder: (context) => ChangeEmailModal(),
                  );
                },
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

/**
 * body: Center(
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () =>
                context.read<AuthBloc>().add(const AuthEvent.signedOut()),
            child: AutoSizeText(
              LocaleKeys.signOut.tr(),
              minFontSize: 8,
              maxLines: 1,
              style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black),
            ),
          ),
        ),
 */

import 'package:dart_counter/application/auth/auth_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/settings/modals/modals.dart';
import 'widgets/widgets.dart';

class AccountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state == const AuthState.unauthenticated()) {
          //ontext.router.replaceAll([const AuthWidgetRoute()]);
        }
      },
      child: AppCard(
        middle: AutoSizeText(
          LocaleKeys.account.tr().toUpperCase(),
          maxFontSize: 14,
          minFontSize: 8,
          maxLines: 1,
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(color: AppColors.white),
        ),
        children: [
          AccountItem(
            title: LocaleKeys.username.tr(),
            onPressed: () {
              showCupertinoModalBottomSheet(
                expand: true,
                context: context,
                builder: (context) => ChangeUsernameModal(),
              );
            },
          ),
          AccountItem(
            title: LocaleKeys.password.tr(),
            onPressed: () {
              showCupertinoModalBottomSheet(
                expand: true,
                context: context,
                builder: (context) => ChangePasswordModal(),
              );
            },
          ),
          AccountItem(
            title: LocaleKeys.email.tr(),
            onPressed: () {
              showCupertinoModalBottomSheet(
                expand: true,
                context: context,
                builder: (context) => ChangeEmailModal(),
              );
            },
          ),
        ],
      ),
    );
  }
}

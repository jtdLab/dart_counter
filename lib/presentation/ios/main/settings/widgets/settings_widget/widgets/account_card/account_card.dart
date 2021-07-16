import 'package:dart_counter/presentation/ios/main/settings/modals/modals.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class AccountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppCard(
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
              builder: (context) => ChangeUsernameFlow(),
            );
          },
        ),
        AccountItem(
          title: LocaleKeys.password.tr(),
          onPressed: () {
            showCupertinoModalBottomSheet(
              expand: true,
              context: context,
              builder: (context) => ChangePasswordFlow(),
            );
          },
        ),
        AccountItem(
          title: LocaleKeys.email.tr(),
          onPressed: () {
            showCupertinoModalBottomSheet(
              expand: true,
              context: context,
              builder: (context) => ChangeEmailFlow(),
            );
          },
        ),
      ],
    );
  }
}

part of './settings_page.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        final photoUrl = state.user.profile.photoUrl;

        return Column(
          children: [
            CupertinoButton(
              onPressed: () {
                showCupertinoModalBottomSheet(
                  backgroundColor: Colors.white70,
                  context: context,
                  builder: (context) => EditProfileImageModal(),
                );
              },
              child: ProfileImageDisplayer(
                photoUrl: photoUrl,
              ),
            ),
            const AppSpacer.large(),
            LanguageCard(),
            const AppSpacer.large(),
            AccountCard(),
            const AppSpacer.large(),
            DartsGerCard(),
            const AppSpacer.large(),
            AppPrimaryButton(
              text: LocaleKeys.signOut.tr(),
              color: AppColors.red,
              onPressed: () {
                context
                    .read<SettingsBloc>()
                    .add(const SettingsEvent.signOutPressed());
              },
            ),
          ],
        );
      },
    );
  }
}

class LanguageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: AutoSizeText(
        LocaleKeys.language.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: const [
        LanguageItem(
          language: Locale('de'),
        ),
        LanguageItem(
          language: Locale('en'),
        ),
      ],
    );
  }
}

class LanguageItem extends StatelessWidget {
  final Locale language;

  const LanguageItem({
    Key? key,
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardItem.small(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlagDisplayer(
            language: language,
          ),
          Text(
            language.toLanguageTag().toUpperCase(),
          ),
          CheckBox(
            language: language,
          ),
        ],
      ),
    );
  }
}

class FlagDisplayer extends StatelessWidget {
  final Locale language;

  const FlagDisplayer({
    Key? key,
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(size6(context)),
      child: Image.asset(
        language == const Locale('de') ? AppImages.de : AppImages.uk,
      ),
    );
  }
}

class CheckBox extends StatelessWidget {
  final Locale language;

  const CheckBox({
    Key? key,
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.locale == language) {
      return AppIconButton(
        icon: Image.asset(
          AppImages.checkMarkQuadNew,
        ),
      );
    } else {
      return AppIconButton(
        onPressed: () async {
          // TODO should work without call to settins bloc if easy localizations rebuilts correctly on locale change
          await context.setLocale(
            language,
          );
          context.read<SettingsBloc>().add(const SettingsEvent.localeChanged());
        },
        icon: Image.asset(
          AppImages.uncheckedNew,
        ),
      );
    }
  }
}

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
              builder: (context) => const ChangeUsernameModal(),
            );
          },
        ),
        AccountItem(
          title: LocaleKeys.password.tr(),
          onPressed: () {
            showCupertinoModalBottomSheet(
              expand: true,
              context: context,
              builder: (context) => const ChangePasswordModal(),
            );
          },
        ),
        AccountItem(
          title: LocaleKeys.email.tr(),
          onPressed: () {
            showCupertinoModalBottomSheet(
              expand: true,
              context: context,
              builder: (context) => const ChangeEmailModal(),
            );
          },
        ),
      ],
    );
  }
}

class AccountItem extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const AccountItem({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardItem.small(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(size6(context)),
            child: Text(
              title.toUpperCase(),
            ),
          ),
          AppIconButton(
            onPressed: onPressed,
            icon: Image.asset(AppImages.settingsNew),
          ),
        ],
      ),
    );
  }
}

class DartsGerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: AutoSizeText(
        'dartsger'.toUpperCase(),
        maxFontSize: 14,
        minFontSize: 8,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        DartsGerCardItem(
          title: LocaleKeys.privacyPolicy.tr().toUpperCase(),
          onPressed: () => context.router.push(const PrivacyPolicyPageRoute()),
        ),
        DartsGerCardItem(
          title: LocaleKeys.contact.tr().toUpperCase(),
          onPressed: () => context.router.push(const ContactPageRoute()),
        ),
      ],
    );
  }
}

class DartsGerCardItem extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const DartsGerCardItem({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardItem.small(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(size6(context)),
              child: AutoSizeText(
                title.toUpperCase(),
                maxLines: 1,
                maxFontSize: 14,
                minFontSize: 8,
              ),
            ),
          ),
          AppIconButton(
            onPressed: onPressed,
            icon: Image.asset(AppImages.infoDarkNew),
          ),
        ],
      ),
    );
  }
}

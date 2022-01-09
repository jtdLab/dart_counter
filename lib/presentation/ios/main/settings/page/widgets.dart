part of 'settings_page.dart';

// BODY
class _SettingsWidget extends StatelessWidget {
  const _SettingsWidget({
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
                // TODO background
                /**
                *  showCupertinoModalBottomSheet(
                  backgroundColor: Colors.white70,
                  context: context,
                  builder: (context) => EditProfileImageModal(),
                );
                */
                context.router.push(const EditProfileImageModalRoute());
              },
              child: ProfileImageDisplayer(
                photoUrl: photoUrl,
              ),
            ),
            SizedBox(
              height: spacerLarge(context),
            ),
            _LanguageCard(),
            SizedBox(
              height: spacerLarge(context),
            ),
            _AccountCard(),
            SizedBox(
              height: spacerLarge(context),
            ),
            _DartsGerCard(),
            SizedBox(
              height: spacerLarge(context),
            ),
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

class _LanguageCard extends StatelessWidget {
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
        _LanguageItem(
          language: Locale('de'),
        ),
        _LanguageItem(
          language: Locale('en'),
        ),
      ],
    );
  }
}

class _LanguageItem extends StatelessWidget {
  final Locale language;

  const _LanguageItem({
    Key? key,
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: () {
        // TODO should work without call to settins bloc if easy localizations rebuilts correctly on locale change
        context.setLocale(
          language,
        );
        context.read<SettingsBloc>().add(const SettingsEvent.localeChanged());
      },
      child: AppCardItem.small(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _FlagDisplayer(
              language: language,
            ),
            Text(
              language.toLanguageTag().toUpperCase(),
            ),
            _CheckBox(
              language: language,
            ),
          ],
        ),
      ),
    );
  }
}

class _FlagDisplayer extends StatelessWidget {
  final Locale language;

  const _FlagDisplayer({
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

class _CheckBox extends StatelessWidget {
  final Locale language;

  const _CheckBox({
    Key? key,
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.locale == language) {
      return Padding(
        padding: EdgeInsets.all(size6(context)),
        child: Image.asset(
          AppImages.checkMarkQuadNew,
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.all(size6(context)),
        child: Image.asset(
          AppImages.uncheckedNew,
        ),
      );
    }
  }
}

class _AccountCard extends StatelessWidget {
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
        _AccountItem(
          title: LocaleKeys.username.tr(),
          onPressed: () =>
              context.router.push(const ChangeUsernameModalRoute()),
        ),
        _AccountItem(
          title: LocaleKeys.password.tr(),
          onPressed: () =>
              context.router.push(const ChangePasswordModalRoute()),
        ),
        _AccountItem(
          title: LocaleKeys.email.tr(),
          onPressed: () => context.router.push(const ChangeEmailModalRoute()),
        ),
      ],
    );
  }
}

class _AccountItem extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const _AccountItem({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: AppCardItem.small(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(size6(context)),
              child: Text(
                title.toUpperCase(),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(size6(context)),
              child: Image.asset(AppImages.settingsNew),
            ),
          ],
        ),
      ),
    );
  }
}

class _DartsGerCard extends StatelessWidget {
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
        _DartsGerCardItem(
          title: LocaleKeys.privacyPolicy.tr().toUpperCase(),
          onPressed: () => context.router.push(const PrivacyPolicyPageRoute()),
        ),
        _DartsGerCardItem(
          title: LocaleKeys.contact.tr().toUpperCase(),
          onPressed: () => context.router.push(const ContactPageRoute()),
        ),
      ],
    );
  }
}

class _DartsGerCardItem extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const _DartsGerCardItem({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: AppCardItem.small(
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
            Padding(
              padding: EdgeInsets.all(size6(context)),
              child: Image.asset(AppImages.infoDarkNew),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/account_card.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/language_card.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/privacy_and_legal_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          LocaleKeys.settings.tr(),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              LanguageCard(),
              const SizedBox(
                height: 4,
              ),
              AccountCard(),
              const SizedBox(
                height: 4,
              ),
              PrivacyAndLegalCard(),
            ],
          ),
        ),
      ),
    );
  }
}

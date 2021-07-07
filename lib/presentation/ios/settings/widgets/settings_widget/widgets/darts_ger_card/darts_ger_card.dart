import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/app_card.dart';

import 'widgets/widgets.dart';

class DartsGerCard extends StatelessWidget {
  const DartsGerCard({Key? key}) : super(key: key);

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
        DartsGerCardItem(
          title: LocaleKeys.privacyAndLegal.tr().toUpperCase(),
          onPressed: () => context.router.push(const LegalPageRoute()),
        ),
        DartsGerCardItem(
          title: LocaleKeys.contact.tr().toUpperCase(),
          onPressed: () => context.router.push(const ImpressumPageRoute()),
        ),
      ],
    );
  }
}

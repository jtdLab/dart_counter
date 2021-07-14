import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class DartsGerCard extends StatelessWidget {
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

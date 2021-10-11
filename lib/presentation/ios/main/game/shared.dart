// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// DOMAIN
import 'package:dart_counter/domain/play/player_snapshot.dart';

class YouReallyWantToCancelGameDialog extends StatelessWidget {
  final VoidCallback onYesPressed;

  const YouReallyWantToCancelGameDialog({
    Key? key,
    required this.onYesPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      backgroundColor: Colors.white.withOpacity(
        0.85,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppColumn(
            spacing: size6(context),
            children: [
              Container(
                height: size55(context),
                color: AppColors.black,
                child: Center(
                  child: Text(
                    'Spiel Abbrechen?',
                    style:
                        CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                              color: AppColors.white,
                            ),
                  ),
                ),
              ),
              AppRow(
                spacing: size6(context),
                children: [
                  Expanded(
                    child: AppActionButton.normal(
                      color: AppColors.green,
                      fontColor: AppColors.white,
                      onPressed: onYesPressed,
                      text: 'JA',
                    ),
                  ),
                  Expanded(
                    child: AppActionButton.normal(
                      color: AppColors.red,
                      fontColor: AppColors.white,
                      onPressed: () => context.router.pop(),
                      text: 'NEIN',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StatsWidget extends StatelessWidget {
  final KtList<AbstractPlayerSnapshot> players;

  const StatsWidget({
    Key? key,
    required this.players,
  }) : super(key: key);

  // TODO use players

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size12(context),
      children: const [
        GeneralStatsCard(),
        AverrageCard(),
        CheckoutCard(),
        TakesCard(),
      ],
    );
  }
}

// TODO refactor +  use game ???
class AverrageCard extends StatelessWidget {
  const AverrageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final game;

    return AppCard(
      headerBodySpacing: size6(context),
      leading: AutoSizeText(
        LocaleKeys.averrage.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        AppCardItem.custom(
          height: size70(context) + size12(context) + 1, // TODO
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.averrage.tr().toUpperCase(),
                value: '0.00',
              ),
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.firstNine.tr().toUpperCase(),
                value: '0.00',
              ),
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.bestLeg.tr().toUpperCase(),
                value: '0.00',
              ),
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.worstLeg.tr().toUpperCase(),
                value: '0.00',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// TODO refactor +  use game ???
class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final game;

    return AppCard(
      headerBodySpacing: size6(context),
      leading: AutoSizeText(
        LocaleKeys.checkout.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        AppCardItem.custom(
          height: size70(context),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.checkoutPercentageShort.tr().toUpperCase(),
                value: '0.00',
              ),
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.dartsPerLeg.tr().toUpperCase(),
                value: '0.00',
              ),
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.hightestFinish.tr().toUpperCase(),
                value: '0.00',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class GameHistoryDetailsCardContentRow extends StatelessWidget {
  final String title;
  final String value;

  const GameHistoryDetailsCardContentRow({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size6(context),
      ),
      child: Row(
        children: [
          Text(title),
          const Spacer(),
          Text(value),
        ],
      ),
    );
  }
}

// TODO refactor +  use game ???
class GeneralStatsCard extends StatelessWidget {
  const GeneralStatsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final game;
    return AppCard(
      headerBodySpacing: size6(context),
      leading: AutoSizeText(
        LocaleKeys.general.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      /*trailing: AutoSizeText(
        'SEBI ABI 69',
        maxLines: 1,
        minFontSize: 8,
        maxFontSize: 14,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),*/
      children: [
        AppCardItem.custom(
          height: size70(context),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.name.tr().toUpperCase(),
                value: 'SEBI ABI 69',
              ),
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.sets.tr().toUpperCase(),
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.legs.tr().toUpperCase(),
                value: '0',
              )
            ],
          ),
        ),
      ],
    );
  }
}

// TODO refactor +  use game ???
class TakesCard extends StatelessWidget {
  const TakesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final game;

    return AppCard(
      headerBodySpacing: size6(context),
      leading: AutoSizeText(
        'takes'.toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        AppCardItem.custom(
          height: size150(context) + 43, //TODO
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              GameHistoryDetailsCardContentRow(
                title: '40+',
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: '60+',
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: '80+',
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: '100+',
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: '120+',
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: '140+',
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: '160+',
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: '180',
                value: '0',
              ),
            ],
          ),
        ),
      ],
    );
  }
}


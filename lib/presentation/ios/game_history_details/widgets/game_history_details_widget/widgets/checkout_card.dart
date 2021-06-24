import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'game_history_details_card_row.dart';

class CheckoutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppCard(
      headerBodySpacing: size6(context),
      leading: AutoSizeText(
        'checkout'.tr().toUpperCase(),
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

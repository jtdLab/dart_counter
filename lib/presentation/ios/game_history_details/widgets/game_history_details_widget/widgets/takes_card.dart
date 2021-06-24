import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'game_history_details_card_row.dart';

class TakesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          height: size150(context),
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

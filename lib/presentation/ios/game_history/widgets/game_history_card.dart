import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

class GameHistoryCard extends StatelessWidget {
  final Game game;

  const GameHistoryCard({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        context.router.push(GameHistoryDetailsPageRoute(game: game));
      },
      child: AppCard(
        headerBodySpacing: size6(context),
        leading: AutoSizeText(
          'BEST OF 5 LEGS'.toUpperCase(),
          minFontSize: 8,
          maxFontSize: 14,
          maxLines: 1,
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(color: AppColors.white),
        ),
        trailing: AutoSizeText(
          '6 DAYS AGO',
          maxLines: 1,
          minFontSize: 6,
          maxFontSize: 10,
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(color: AppColors.white),
        ),
        children: [
          AppCardItem.large(
            content: _content(context),
          )
        ],
      ),
    );
  }

  // TODO make responsive
  Widget _content(BuildContext context) => Row(
        children: [
          const SizedBox(width: 6),
          Image.asset(AppImages.star_new),
          Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 3,
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText(
                          '${LocaleKeys.averrage.tr().toUpperCase()}:',
                          maxLines: 1,
                          maxFontSize: 14,
                          style: const TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: AutoSizeText(
                          '81.55',
                          maxLines: 1,
                          maxFontSize: 14,
                          style: const TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText(
                          '${LocaleKeys.checkoutPercentageShort.tr().toUpperCase()}:',
                          maxLines: 1,
                          maxFontSize: 14,
                          style: const TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: AutoSizeText(
                          '23.55',
                          maxLines: 1,
                          maxFontSize: 14,
                          style: const TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      )
                    ],
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Image.asset(AppImages.chevron_forward_new),
          const SizedBox(width: 6),
        ],
      );
}

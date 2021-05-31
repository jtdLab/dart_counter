import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
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
      child: Column(
        children: [
          SizedBox(
            height: responsiveDouble(
              context: context,
              mobile: ResponsiveDouble(
                small: 40,
                normal: 50,
                large: 50,
                extraLarge: 60,
              ),
            ),
            child: Container(
              color: AppColors.black,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      'BEST OF 5 LEGS',
                      maxLines: 1,
                      maxFontSize: 14,
                      style: const TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: AutoSizeText(
                      '6 DAYS AGO',
                      maxLines: 1,
                      minFontSize: 6,
                      maxFontSize: 10,
                      style: const TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ), //
          ),
          SizedBox(
            height: responsiveDouble(
              context: context,
              mobile: ResponsiveDouble(
                small: 6,
                normal: 8,
                large: 8,
                extraLarge: 12,
              ),
            ), //
          ),
          SizedBox(
            height: responsiveDouble(
              context: context,
              mobile: ResponsiveDouble(
                small: 60,
                normal: 80,
                large: 80,
                extraLarge: 95,
              ),
            ), //
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.black,
                  width: 4,
                ),
              ),
              child: Row(
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
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/rounded_image.dart';
import 'package:dart_counter/presentation/ios/home/widgets/home_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfileButton extends StatelessWidget {
  final String? photoUrl;
  final String username;
  final double averrage;
  final double checkoutPercentage;
  final int wins;
  final int defeats;

  const ProfileButton({
    Key? key,
    required this.photoUrl,
    required this.username,
    required this.averrage,
    required this.checkoutPercentage,
    required this.wins,
    required this.defeats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeButton(
      onPressed: () => context.router.push(const ProfilePageRoute()),
      builder: (context, boxConstraints) {
        return Row(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: RoundedImage.normal(
                  child: photoUrl != null
                      ? CachedNetworkImage(imageUrl: photoUrl!)
                      : Image.asset(AppImages.photoPlaceholder),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    child: AutoSizeText(
                      username,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w900,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 8,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: AutoSizeText(
                                  '${LocaleKeys.averrage.tr()}:',
                                  maxLines: 1,
                                  minFontSize: 1,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: AutoSizeText(
                                  '${LocaleKeys.checkoutPercentageShort.tr()}:',
                                  maxLines: 1,
                                  minFontSize: 1,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: AutoSizeText(
                                  '${LocaleKeys.wins.tr()}:',
                                  maxLines: 1,
                                  minFontSize: 1,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: AutoSizeText(
                                  '${LocaleKeys.defeats.tr()}:',
                                  maxLines: 1,
                                  minFontSize: 1,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Expanded(
                                child: AutoSizeText(
                                  averrage.toStringAsFixed(2),
                                  maxLines: 1,
                                  minFontSize: 1,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: AutoSizeText(
                                  checkoutPercentage.toStringAsFixed(2),
                                  maxLines: 1,
                                  minFontSize: 1,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: AutoSizeText(
                                  wins.toString(),
                                  maxLines: 1,
                                  minFontSize: 1,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: AutoSizeText(
                                  defeats.toString(),
                                  maxLines: 1,
                                  minFontSize: 1,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        );
      },
    );
  }
}

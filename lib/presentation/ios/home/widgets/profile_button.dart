import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/application/home/profile_button/profile_button_bloc.dart';

import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/circle_image.dart';
import 'package:dart_counter/presentation/ios/home/widgets/home_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProfileButtonBloc>()
            ..add(const ProfileButtonEvent.loadDataRequested()),
        ),
      ],
      child: BlocBuilder<ProfileButtonBloc, ProfileButtonState>(
        builder: (context, state) => HomeButton(
          onPressed: () => context.router.push(const ProfilePageRoute()),
          builder: (context, boxConstraints) {
            return Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: CircleImage(
                      image: state.maybeMap(
                        data: (state) {
                          if (state.photoUrl != null) {
                            return NetworkImage(state.photoUrl!);
                          } else {
                            return const AssetImage(AppImages.photoPlaceholder);
                          }
                        },
                        orElse: () =>
                            const AssetImage(AppImages.photoPlaceholder),
                      ),
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
                          state.maybeMap(
                            data: (state) => state.username,
                            orElse: () => '--',
                          ),
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                      state.maybeMap(
                                        data: (state) =>
                                            state.average.toStringAsFixed(2),
                                        orElse: () => '--',
                                      ),
                                      maxLines: 1,
                                      minFontSize: 1,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: AutoSizeText(
                                      state.maybeMap(
                                        data: (state) => state
                                            .checkoutPercentage
                                            .toStringAsFixed(2),
                                        orElse: () => '--',
                                      ),
                                      maxLines: 1,
                                      minFontSize: 1,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: AutoSizeText(
                                      state.maybeMap(
                                        data: (state) => state.wins.toString(),
                                        orElse: () => '--',
                                      ),
                                      maxLines: 1,
                                      minFontSize: 1,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: AutoSizeText(
                                      state.maybeMap(
                                        data: (state) =>
                                            state.defeats.toString(),
                                        orElse: () => '--',
                                      ),
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
        ),
      ),
    );
  }
}

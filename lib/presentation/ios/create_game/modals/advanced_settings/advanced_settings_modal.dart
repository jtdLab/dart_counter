import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/settings/edit_profile/edit_profile_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:flutter/material.dart' show Colors;

// TODO refactor
class AdvancedSettingsModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<EditProfileBloc>(),
        ),
      ],
      child: Builder(
        builder: (context) => SafeArea(
          top: false,
          bottom: false,
          child: CupertinoPageScaffold(
            backgroundColor: Colors.white70,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: AppColumn(
                spacing: size6(context),
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 30,
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                  AppCardItem.custom(
                    height: size55(context),
                    content: Center(
                      child: Text(
                        LocaleKeys.advancedSettings.tr().toUpperCase(),
                      ),
                    ),
                  ),
                  AppCardItem.small(
                    content: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size12(context),
                      ),
                      child: Row(
                        children: [
                          Text(
                            LocaleKeys.speechInput.tr().toUpperCase(),
                          ),
                          const Spacer(),
                          const Text('Check'),
                        ],
                      ),
                    ),
                  ),
                  AppCardItem.small(
                    content: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size12(context),
                      ),
                      child: Row(
                        children: [
                          Text(
                            LocaleKeys.showCheckoutPercentage
                                .tr()
                                .toUpperCase(),
                          ),
                          const Spacer(),
                          const Text('Check'),
                        ],
                      ),
                    ),
                  ),
                  AppCardItem.small(
                    content: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size12(context),
                      ),
                      child: Row(
                        children: [
                          Text(
                            LocaleKeys.showAverrage.tr().toUpperCase(),
                          ),
                          const Spacer(),
                          const Text('Check'),
                        ],
                      ),
                    ),
                  ),
                  AppActionButton.normal(
                    onPressed: () {},
                    color: AppColors.red,
                    fontColor: AppColors.white,
                    text: LocaleKeys.removePlayer.tr().toUpperCase(),
                  ),
                  AppActionButton.normal(
                    onPressed: () => context.router.pop(),
                    text: LocaleKeys.done.tr().toUpperCase(),
                  ),
                  SizedBox(
                    height: 50,
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

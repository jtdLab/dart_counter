import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/layout/app_column.dart';
import 'package:dart_counter/presentation/ios/core/widgets/rounded_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        leading: AppNavigationBarButton(
          onPressed: () => context.router.pop(),
          child: Image.asset(
            AppImages.chevron_back_new,
          ),
        ),
        middle: Text(
          'Sebi Abi 69'.toUpperCase(),
        ),
        trailing: AppNavigationBarButton(
          onPressed: () {},
          child: Image.asset(
            AppImages.stats_new,
          ),
        ),
      ),
      child: Column(
        children: [
          const Spacer(),
          const RoundedImage.extraLarge(
              imageName: AppImages.photo_placeholder_new),
          const Spacer(),
          AppColumn(
            spacing: size6(context),
            children: [
              AppCardItem.normal(content: Container()),
              AppCardItem.normal(content: Container()),
              AppCardItem.normal(content: Container()),
              AppCardItem.normal(content: Container()),
              AppCardItem.normal(content: Container()),
              AppCardItem.normal(content: Container()),
              AppCardItem.normal(content: Container()),
              AppCardItem.normal(content: Container()),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

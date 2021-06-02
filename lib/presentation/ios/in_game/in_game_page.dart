import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_action_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/layout/app_column.dart';
import 'package:dart_counter/presentation/ios/core/widgets/layout/app_row.dart';
import 'package:dart_counter/presentation/ios/core/widgets/layout/app_spacer.dart';
import 'package:dart_counter/presentation/ios/core/widgets/rounded_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:easy_localization/easy_localization.dart';

class InGamePage extends StatelessWidget {
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
          'Best of 5 Legs'.toUpperCase(),
        ),
        trailing: AppNavigationBarButton(
          onPressed: () {},
          child: Image.asset(
            AppImages.stats_new,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _playerDisplayer(context),
          _inputArea(context),
        ],
      ),
    );
  }

  Widget _playerDisplayer(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _header(context),
        const AppSpacer.large(),
        _center(context),
        const AppSpacer.large(),
        _footer(context),
      ],
    );
  }

  Widget _header(BuildContext context) {
    return SizedBox(
      height: size70(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: size12(context), // TODO check 4 all device sizes
              ),
              child: Expanded(
                child: Container(
                  height: size40(context),
                  decoration: BoxDecoration(
                    color: AppColors.yellow,
                    border: Border.all(
                      width: border4(context),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: RoundedImage.large(
              imageName: AppImages.photo_placeholder_new,
              border: Border.all(
                width: border4(context),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _center(BuildContext context) {
    return Container(
      height: size150(context),
      color: AppColors.green,
      child: Row(),
    );
  }

  Widget _mainStatsCard(BuildContext context) {
    return Container(
      color: AppColors.green,
    );
  }

  Widget _finishRecommendationDisplayer(BuildContext context) {
    return Container(
      color: AppColors.green,
    );
  }

  Widget _footer(BuildContext context) {
    return Container(
      height: size70(context) + 3 * size6(context), // TODO height
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Key : Value'.toUpperCase()),
          ),
          Center(
            child: Text('Key : Value'.toUpperCase()),
          ),
          Center(
            child: Text('Key : Value'.toUpperCase()),
          ),
        ],
      ),
    );
  }

  Widget _inputArea(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        _inputRow(context),
        _keyBoard(context),
      ],
    );
  }

  Widget _inputRow(BuildContext context) {
    return AppRow(
      spacing: size6(context),
      children: [
        Expanded(
          child: _undoButton(context),
        ),
        Expanded(
          child: _inputPointsDisplayer(context),
        ),
        Expanded(
          child: _doButton(context),
        ),
      ],
    );
  }

  Widget _undoButton(BuildContext context) {
    return Container(
      height: size55(context),
      color: AppColors.red,
    );
  }

  Widget _inputPointsDisplayer(BuildContext context) {
    return Container(
      height: size55(context),
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: Center(
        child: Text(
          '0',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }

  Widget _doButton(BuildContext context) {
    return Container(
      height: size55(context),
      color: AppColors.green,
    );
  }

  Widget _keyBoard(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: _keyBoardButton(
                context,
                text: '1',
              ),
            ),
            Expanded(
              child: _keyBoardButton(
                context,
                text: '2',
              ),
            ),
            Expanded(
              child: _keyBoardButton(
                context,
                text: '3',
              ),
            ),
          ],
        ),
        AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: _keyBoardButton(
                context,
                text: '4',
              ),
            ),
            Expanded(
              child: _keyBoardButton(
                context,
                text: '5',
              ),
            ),
            Expanded(
              child: _keyBoardButton(
                context,
                text: '6',
              ),
            ),
          ],
        ),
        AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: _keyBoardButton(
                context,
                text: '7',
              ),
            ),
            Expanded(
              child: _keyBoardButton(
                context,
                text: '8',
              ),
            ),
            Expanded(
              child: _keyBoardButton(
                context,
                text: '9',
              ),
            ),
          ],
        ),
        AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: _keyBoardButton(
                context,
                fontSize: 18,
                text: LocaleKeys.check.tr().toUpperCase(),
              ),
            ),
            Expanded(
              child: _keyBoardButton(
                context,
                text: '0',
              ),
            ),
            Expanded(
              child: _keyBoardButton(
                context,
                child: Image.asset(AppImages.chevron_back_new),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _keyBoardButton(
    BuildContext context, {
    String? text,
    double fontSize = 28,
    Widget? child,
  }) {
    if (text != null) {
      return AppActionButton.normal(
        fontSize: fontSize,
        color: AppColors.white,
        onPressed: () {},
        text: text,
      );
    }
    if (child != null) {
      return AppActionButton.normal(
        color: AppColors.white,
        onPressed: () {},
        icon: child,
      );
    }
    throw Error(); // TODO aka assert in staless widget
  }
}

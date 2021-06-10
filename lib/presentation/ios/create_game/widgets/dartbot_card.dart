import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_number_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class DartBotCard extends StatelessWidget {
  final VoidCallback onPressed;

  const DartBotCard({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AppCard(
      leading: AutoSizeText(
        LocaleKeys.dartBot.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      trailing: _checkBox(context),
      children: [
        AppCardItem.large(
          content: AppNumberPicker(),
        ),
      ],
    );
  }

  Widget _checkBox(BuildContext context) {
    // TODO
    if (true) {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset(
          AppImages.check_mark_quad_new,
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: CupertinoButton(
          minSize: 0,
          padding: EdgeInsets.zero,
          onPressed: () {},
          child: Image.asset(
            AppImages.unchecked_new,
          ),
        ),
      );
    }
  }
}

import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class LanguageItem extends StatelessWidget {
  final Locale language;

  const LanguageItem({Key? key, required this.language}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardItem.small(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _flagDisplayer(context),
          Text(
            language.toLanguageTag().toUpperCase(),
          ),
          _checkBox(context),
        ],
      ),
    );
  }

  Widget _flagDisplayer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image.asset(
        language == const Locale('de') ? AppImages.de : AppImages.uk,
      ),
    );
  }

  Widget _checkBox(BuildContext context) {
    if (context.locale == language) {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset(
          AppImages.check_mark_quad_new,
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.all(5.0),
        child: CupertinoButton(
          minSize: 0,
          padding: EdgeInsets.zero,
          onPressed: () async {
            await context.setLocale(language);
          },
          child: Image.asset(
            AppImages.unchecked_new,
          ),
        ),
      );
    }
  }
}

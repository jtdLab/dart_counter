import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/language_card/widgets/language_item/widgets/check_box.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/language_card/widgets/language_item/widgets/flag_displayer.dart';
import 'package:flutter/cupertino.dart';

class LanguageItem extends StatelessWidget {
  final Locale language;

  const LanguageItem({Key? key, required this.language}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardItem.small(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlagDisplayer(
            language: language,
          ),
          Text(
            language.toLanguageTag().toUpperCase(),
          ),
          CheckBox(
            language: language,
          ),
        ],
      ),
    );
  }
}

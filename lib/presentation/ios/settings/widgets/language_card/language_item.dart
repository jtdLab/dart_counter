import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class LanguageItem extends StatelessWidget {
  final Locale language;

  const LanguageItem({Key? key, required this.language}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () async {
        await context.setLocale(language);
      },
      child: Container(
        height: 100,
        child: Row(
          children: [
            Image.asset(
              language == const Locale('de') ? AppImages.de : AppImages.uk,
            ),
            const Spacer(),
            Text(
              language.toString().toUpperCase(),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: AppColors.black,
              ),
            ),
            const Spacer(),
            Visibility(
              visible: context.locale == language,
              maintainState: true,
              maintainSize: true,
              maintainAnimation: true,
              child: Image.asset(AppImages.checkmark_new),
            ),
          ],
        ),
      ),
    );
  }
}

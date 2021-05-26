import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';

class LanguageItem extends StatelessWidget {
  final String language;

  const LanguageItem({Key? key, required this.language}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        child: Row(
          children: [
            Image.asset(
              language.toUpperCase() == 'DEUTSCH' ? AppImages.de : AppImages.uk,
            ),
            const Spacer(),
            Text(
              language.toUpperCase(),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: AppColors.black,
              ),
            ),
            const Spacer(),
            CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              child: Image.asset(AppImages.checkmark_new),
            ),
          ],
        ),
      ),
    );
  }
}

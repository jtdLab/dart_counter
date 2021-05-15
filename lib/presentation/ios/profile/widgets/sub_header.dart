import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class SubHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
      child: Container(
        color: AppColors.black,
        child: Row(
          children: [
            const Spacer(),
            Center(
              child: AutoSizeText(
                LocaleKeys.careerStats.tr(),
                maxLines: 1,
                style: const TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 37,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

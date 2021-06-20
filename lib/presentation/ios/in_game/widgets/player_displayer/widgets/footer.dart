import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_spacer.dart';
import 'package:flutter/cupertino.dart' hide Orientation;
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:easy_localization/easy_localization.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size70(context) + 3 * size6(context), // TODO height
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(LocaleKeys.dartsThrown.tr().toUpperCase()),
              Text(LocaleKeys.averrage.tr().toUpperCase()),
              Text(LocaleKeys.checkoutPercentageShort.tr().toUpperCase()),
            ],
          ),
          const AppSpacer.normal(
            orientation: Orientation.horizontal,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(': 3'),
              Text(': 180.00'),
              Text(': 9.55'),
            ],
          ),
        ],
      ),
    );
  }
}

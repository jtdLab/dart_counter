import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';

import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

import 'widgets/widgets.dart';

class SentInvitationsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: Text(
        LocaleKeys.sent.tr().toUpperCase(),
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        SentInvitationsItem(),
        SentInvitationsItem(),
        SentInvitationsItem(),
      ],
    );
  }
}

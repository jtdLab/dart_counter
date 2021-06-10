import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/invitations/widgets/sent_invitations_card/widgets/sent_invitations_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

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

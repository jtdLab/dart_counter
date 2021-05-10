import 'package:auto_size_text/auto_size_text.dart';
import 'package:badges/badges.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/home/widgets/home_button.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

class InvitationsButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return HomeButton(
      onPressed: () => context.router.push(const InvitationsPageRoute()),
      builder: (context, boxConstraints) {
        return Column(
          children: [
            const Spacer(),
            Badge(
              badgeContent: const Text(
                '1',
                style: TextStyle(
                    color: AppColors.white, fontWeight: FontWeight.bold),
              ),
              position: BadgePosition.topEnd(top: -5, end: -5),
              child: Image.asset(
                AppImages.iconInvite,
                fit: BoxFit.fill,
                width: 50,
                height: 50,
              ),
            ),
            const Spacer(),
            AutoSizeText(
              LocaleKeys.invitations.tr().toUpperCase(),
              maxLines: 1,
              style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w900,
                  color: AppColors.white),
            ),
            const Spacer(),
          ],
        );
      },
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:badges/badges.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/home/widgets/home_button.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';

class InvitationsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButton(
      onPressed: () => context.router.push(const InvitationsPageRoute()),
      builder: (context, boxConstraints) {
        return Column(
          children: [
            Badge(
              badgeContent: Text(
                '1',
                style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
              ),
              child: Image.asset(AppImages.iconInvite),
            ),
            AutoSizeText('Invitations todo'),
          ],
        );
      },
    );
  }
}

import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_spacer.dart';
import 'package:dart_counter/presentation/ios/home/widgets/friend_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/invitation_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/settings_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/stats_button.dart';
import 'package:flutter/cupertino.dart' hide Router, Orientation;

import 'widgets/home_widget/home_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        leading: const SettingsButton(),
        trailing: Row(
          children: const [
            InvitationButton(),
            AppSpacer.large(
              orientation: Orientation.horizontal,
            ),
            FriendButton(),
            AppSpacer.large(
              orientation: Orientation.horizontal,
            ),
            StatsButton(),
          ],
        ),
      ),
      child: HomeWidget(),
    );
  }
}

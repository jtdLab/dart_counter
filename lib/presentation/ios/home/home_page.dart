import 'package:dart_counter/application/career_stats/career_stats_watcher/career_stats_watcher_bloc.dart';
import 'package:dart_counter/application/friends/friends_watcher/friends_watcher_bloc.dart';
import 'package:dart_counter/application/invitations/invitations_watcher/invitations_watcher_bloc.dart';
import 'package:dart_counter/application/user/user_actor/user_actor_bloc.dart';
import 'package:dart_counter/application/user/user_watcher/user_watcher_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/ios/home/widgets/friends_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/invitations_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/offline_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/online_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/profile_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/settings_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/social_media_button.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(LocaleKeys.home.tr()),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              ProfileButton(),
              SizedBox(
                height: responsiveDouble(
                  context: context,
                  mobile: ResponsiveDouble(normal: 2, large: 4, extraLarge: 6),
                ),
              ),
              OfflineButton(),
              SizedBox(
                height: responsiveDouble(
                  context: context,
                  mobile: ResponsiveDouble(normal: 2, large: 4, extraLarge: 6),
                ),
              ),
              OnlineButton(),
              SizedBox(
                height: responsiveDouble(
                  context: context,
                  mobile: ResponsiveDouble(normal: 2, large: 4, extraLarge: 6),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    InvitationsButton(),
                    SizedBox(
                      width: responsiveDouble(
                        context: context,
                        mobile: ResponsiveDouble(
                            normal: 2, large: 4, extraLarge: 6),
                      ),
                    ),
                    FriendsButton(),
                  ],
                ),
              ),
              SizedBox(
                height: responsiveDouble(
                  context: context,
                  mobile: ResponsiveDouble(normal: 2, large: 4, extraLarge: 6),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    SocialMediaButton(),
                    SizedBox(
                      width: responsiveDouble(
                        context: context,
                        mobile: ResponsiveDouble(
                            normal: 2, large: 4, extraLarge: 6),
                      ),
                    ),
                    SettingsButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/ios/home/widgets/friends_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/invitations_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/offline_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/online_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/profile_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/settings_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/social_media_button.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state == const AuthState.unauthenticated()) {
          context.router.replace(const AuthWidgetRoute());
        } else {
          context.router.replace(const HomePageRoute());
        }
      },
      builder: (context, state) => CupertinoPageScaffold(
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
                    mobile:
                        ResponsiveDouble(normal: 2, large: 4, extraLarge: 6),
                  ),
                ),
                OfflineButton(),
                SizedBox(
                  height: responsiveDouble(
                    context: context,
                    mobile:
                        ResponsiveDouble(normal: 2, large: 4, extraLarge: 6),
                  ),
                ),
                OnlineButton(),
                SizedBox(
                  height: responsiveDouble(
                    context: context,
                    mobile:
                        ResponsiveDouble(normal: 2, large: 4, extraLarge: 6),
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
                    mobile:
                        ResponsiveDouble(normal: 2, large: 4, extraLarge: 6),
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
      ),
    );
  }
}

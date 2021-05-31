import 'package:dart_counter/application/home/home_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/ios/core/widgets/loading.dart';
import 'package:dart_counter/presentation/ios/home/widgets/friends_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/invitations_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/offline_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/online_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/profile_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/settings_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/social_media_button.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: getIt<HomeBloc>()..add(const HomeEvent.watchDataStarted()),
      builder: (context, state) => CupertinoPageScaffold(
        navigationBar: !state.loading
            ? CupertinoNavigationBar(
                middle: Text(LocaleKeys.home.tr()),
              )
            : null,
        child: SafeArea(
          child: !state.loading
              ? Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      ProfileButton(
                        photoUrl: state.user!.profile.photoUrl,
                        username: state.user!.profile.username.getOrCrash(),
                        averrage: state.user!.careerStatsOnline.average,
                        checkoutPercentage:
                            state.user!.careerStatsOnline.checkoutPercentage,
                        wins: state.user!.careerStatsOnline.wins,
                        defeats: state.user!.careerStatsOnline.defeats,
                      ),
                      SizedBox(
                        height: responsiveDouble(
                          context: context,
                          mobile: ResponsiveDouble(
                            small: 1,
                            normal: 2,
                            large: 4,
                            extraLarge: 6,
                          ),
                        ),
                      ),
                      OfflineButton(),
                      SizedBox(
                        height: responsiveDouble(
                          context: context,
                          mobile: ResponsiveDouble(
                            small: 1,
                            normal: 2,
                            large: 4,
                            extraLarge: 6,
                          ),
                        ),
                      ),
                      OnlineButton(),
                      SizedBox(
                        height: responsiveDouble(
                          context: context,
                          mobile: ResponsiveDouble(
                            small: 1,
                            normal: 2,
                            large: 4,
                            extraLarge: 6,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            InvitationsButton(
                              newGameInvitations: state.newGameInvitations!,
                            ),
                            SizedBox(
                              width: responsiveDouble(
                                context: context,
                                mobile: ResponsiveDouble(
                                  small: 1,
                                  normal: 2,
                                  large: 4,
                                  extraLarge: 6,
                                ),
                              ),
                            ),
                            FriendsButton(
                              newFriendRequests: state.newFriendRequests!,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: responsiveDouble(
                          context: context,
                          mobile: ResponsiveDouble(
                            small: 1,
                            normal: 2,
                            large: 4,
                            extraLarge: 6,
                          ),
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
                                  small: 1,
                                  normal: 2,
                                  large: 4,
                                  extraLarge: 6,
                                ),
                              ),
                            ),
                            const SettingsButton(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Loading(),
        ),
      ),
    );
  }
}

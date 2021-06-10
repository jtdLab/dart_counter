import 'package:badges/badges.dart';
import 'package:dart_counter/application/home/home_bloc.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_spacer.dart';
import 'package:dart_counter/presentation/ios/core/widgets/loading.dart';
import 'package:dart_counter/presentation/ios/home/widgets/loaded/instagram_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/loaded/name_displayer.dart';
import 'package:dart_counter/presentation/ios/home/widgets/loaded/play_offline_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/loaded/play_online_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/loaded/train_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/loaded/youtube_button.dart';
import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:flutter/cupertino.dart' hide Router, Orientation;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

import 'widgets/loaded/image_displayer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: getIt<HomeBloc>()..add(const HomeEvent.watchDataStarted()),
      builder: (context, state) {
        return AppPage(
          navigationBar: !state.loading ? _navigationBar(context) : null,
          child: Builder(
            builder: (context) {
              if (state.loading) {
                return Loading();
              } else {
                if (state.error) {
                  return const _ErrorWidget();
                } else {
                  return Column(
                    children: [
                      const Spacer(),
                      ImageDisplayer(photoUrl: state.user!.profile.photoUrl),
                      const Spacer(),
                      NameDisplayer(
                        name: state.user!.profile.username.getOrCrash(),
                      ),
                      const Spacer(),
                      PlayOnlineButton(),
                      const AppSpacer.normal(),
                      PlayOfflineButton(),
                      const AppSpacer.normal(),
                      TrainButton(),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InstagramButton(),
                          YoutubeButton(),
                        ],
                      ),
                      const Spacer(),
                    ],
                  );
                }
              }
            },
          ),
        );
      },
    );
  }

  AppNavigationBar _navigationBar(BuildContext context) => AppNavigationBar(
        leading: AppNavigationBarButton(
          onPressed: () => context.router.push(const SettingsPageRoute()),
          child: Image.asset(
            AppImages.settings_new,
          ),
        ),
        trailing: Row(
          children: [
            Badge(
              badgeContent: Text(
                1.toString(),
                style: const TextStyle(
                    color: AppColors.white, fontWeight: FontWeight.bold),
              ),
              position: BadgePosition.topEnd(
                top: -13,
              ),
              child: AppNavigationBarButton(
                onPressed: () =>
                    context.router.push(const InvitationsPageRoute()),
                child: Image.asset(
                  AppImages.message_new,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const AppSpacer.large(
              orientation: Orientation.horizontal,
            ),
            Badge(
              badgeContent: Text(
                1.toString(),
                style: const TextStyle(
                    color: AppColors.white, fontWeight: FontWeight.bold),
              ),
              position: BadgePosition.topEnd(
                top: -13,
              ),
              child: AppNavigationBarButton(
                onPressed: () => context.router.push(const FriendsPageRoute()),
                child: Image.asset(
                  AppImages.player_new,
                ),
              ),
            ),
            const AppSpacer.large(
              orientation: Orientation.horizontal,
            ),
            AppNavigationBarButton(
              onPressed: () => context.router.push(const ProfilePageRoute()),
              child: Image.asset(
                AppImages.stats_new,
              ),
            ),
          ],
        ),
      );
}

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        toString(),
      ),
    );
  }
}

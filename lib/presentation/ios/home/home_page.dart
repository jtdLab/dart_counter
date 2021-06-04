import 'package:dart_counter/application/home/home_bloc.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/layout/app_spacer.dart';
import 'package:dart_counter/presentation/ios/core/widgets/rounded_image.dart';
import 'package:dart_counter/presentation/ios/home/widgets/instagram_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/name_displayer.dart';
import 'package:dart_counter/presentation/ios/home/widgets/play_offline_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/play_online_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/train_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/youtube_button.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart' hide Router, Orientation;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: getIt<HomeBloc>()..add(const HomeEvent.watchDataStarted()),
      builder: (context, state) => AppPage(
        navigationBar: AppNavigationBar(
          leading: AppNavigationBarButton(
            onPressed: () => context.router.push(const SettingsPageRoute()),
            child: Image.asset(
              AppImages.settings_new,
            ),
          ),
          trailing: Row(
            children: [
              AppNavigationBarButton(
                onPressed: () =>
                    context.router.push(const InvitationsPageRoute()),
                child: Image.asset(
                  AppImages.message_new,
                  fit: BoxFit.fitHeight,
                ),
              ),
              const AppSpacer.large(
                orientation: Orientation.horizontal,
              ),
              AppNavigationBarButton(
                onPressed: () => context.router.push(const FriendsPageRoute()),
                child: Image.asset(
                  AppImages.player_new,
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
        ),
        child: Column(
          children: [
            const Spacer(),
            const RoundedImage.extraLarge(
              imageName: AppImages.photo_placeholder_new,
            ),
            const Spacer(),
            NameDisplayer(),
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
        ),
      ),
    );
  }
}

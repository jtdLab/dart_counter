import 'package:dart_counter/application/home/home_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_action_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/layout/app_spacer.dart';
import 'package:dart_counter/presentation/ios/core/widgets/rounded_image.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart' hide Router, Orientation;
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:url_launcher/url_launcher.dart';

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
            _nameDisplayer(context),
            const Spacer(),
            _playOnlineButton(context),
            const AppSpacer.normal(),
            _playOfflineButton(context),
            const AppSpacer.normal(),
            _trainButton(context),
            const Spacer(),
            _socialMediaRow(context),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _nameDisplayer(BuildContext context) => Container(
        height: size40(context),
        decoration: BoxDecoration(
          color: AppColors.blue_new,
          border: Border.all(
            width: border4(context),
          ),
        ),
        child: Center(
          child: Text(
            'Sebi Abi 69'.toUpperCase(),
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  color: AppColors.white,
                ),
          ),
        ),
      );

  Widget _playOnlineButton(BuildContext context) => AppActionButton.large(
        onPressed: () => context.router.push(const CreateGamePageRoute()),
        color: AppColors.orange_new,
        fontColor: AppColors.black,
        icon: Image.asset(AppImages.players_new),
        text: '${LocaleKeys.play.tr()} ${LocaleKeys.online.tr()}'.toUpperCase(),
      );

  Widget _playOfflineButton(BuildContext context) => AppActionButton.large(
        onPressed: () => context.router.push(const CreateGamePageRoute()),
        color: AppColors.white,
        fontColor: AppColors.black,
        icon: Image.asset(AppImages.robot_new),
        text:
            '${LocaleKeys.play.tr()} ${LocaleKeys.offline.tr()}'.toUpperCase(),
      );

  Widget _trainButton(BuildContext context) => AppActionButton.large(
        onPressed: () {},
        color: AppColors.black,
        icon: Image.asset(AppImages.target_new),
        text: 'Practice room'.toUpperCase(),
      );

  Widget _socialMediaRow(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CupertinoButton(
            onPressed: () async => await canLaunch(
                    'https://www.instagram.com/darts_ger/')
                ? await launch('https://www.instagram.com/darts_ger/')
                : throw 'Could not launch https://www.instagram.com/darts_ger/',
            child: Image.asset(AppImages.ig_new),
          ),
          CupertinoButton(
            onPressed: () async => await canLaunch(
                    'https://www.youtube.com/channel/UCChe8RMi5XJKri5hU9glisQ')
                ? await launch(
                    'https://www.youtube.com/channel/UCChe8RMi5XJKri5hU9glisQ')
                : throw 'Could not launch https://www.youtube.com/channel/UCChe8RMi5XJKri5hU9glisQ',
            child: Image.asset(AppImages.google_new),
          ),
        ],
      );
}

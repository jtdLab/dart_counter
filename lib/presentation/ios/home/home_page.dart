import 'package:badges/badges.dart';
import 'package:dart_counter/application/home/home_bloc.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_spacer.dart';
import 'package:dart_counter/presentation/ios/core/widgets/loading.dart';
import 'package:dart_counter/presentation/ios/home/widgets/error/error.dart';
import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:flutter/cupertino.dart' hide Router, Orientation;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'widgets/loaded/loaded.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<HomeBloc>()..add(const HomeEvent.watchDataStarted()),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return AppPage(
            navigationBar: state.maybeMap(
              loadSuccess: (state) => AppNavigationBar(
                leading: AppNavigationBarButton(
                  onPressed: () =>
                      context.router.push(const SettingsPageRoute()),
                  child: Image.asset(
                    AppImages.settings_new,
                  ),
                ),
                trailing: Row(
                  children: [
                    Badge(
                      badgeContent: Text(
                        state.gameInvitations.size.toString(),
                        style: const TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold),
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
                        state.friendRequests.size.toString(),
                        style: const TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      position: BadgePosition.topEnd(
                        top: -13,
                      ),
                      child: AppNavigationBarButton(
                        onPressed: () =>
                            context.router.push(const FriendsPageRoute()),
                        child: Image.asset(
                          AppImages.player_new,
                        ),
                      ),
                    ),
                    const AppSpacer.large(
                      orientation: Orientation.horizontal,
                    ),
                    AppNavigationBarButton(
                      onPressed: () =>
                          context.router.push(const ProfilePageRoute()),
                      child: Image.asset(
                        AppImages.stats_new,
                      ),
                    ),
                  ],
                ),
              ),
              orElse: () => null,
            ),
            child: state.map(
              loadInProgess: (state) => Loading(),
              loadSuccess: (state) => Loaded(
                username: state.user.profile.username.getOrCrash(),
                photoUrl: state.user.profile.photoUrl,
              ),
              loadFailure: (state) => const Error(),
            ),
          );
        },
      ),
    );
  }
}

import 'package:dart_counter/application/profile/profile_bloc.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_action_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:dart_counter/presentation/ios/profile/widgets/career_stats/career_stats_displayer.dart';
import 'package:dart_counter/presentation/ios/profile/widgets/header.dart';
import 'package:dart_counter/presentation/ios/profile/widgets/sub_header.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProfileBloc>()..add(const ProfileEvent.watchDataStarted()),
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(LocaleKeys.profile.tr()),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Header(),
                ),
                SizedBox(
                  height: responsiveDouble(
                    context: context,
                    mobile:
                        ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SubHeader(),
                ),
                SizedBox(
                  height: responsiveDouble(
                    context: context,
                    mobile:
                        ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: CareerStatsDisplayer(
                    careerStats: CareerStats.initial(),
                  ), // TODO real data
                ),
                SizedBox(
                  height: responsiveDouble(
                    context: context,
                    mobile:
                        ResponsiveDouble(normal: 8, large: 16, extraLarge: 24),
                  ),
                ),
                ActionButton(
                  text: LocaleKeys.showMatchHistory.tr(),
                  onPressed: () =>
                      context.router.push(const GameHistoryPageRoute()),
                ),
                SizedBox(
                  height: responsiveDouble(
                    context: context,
                    mobile:
                        ResponsiveDouble(normal: 8, large: 16, extraLarge: 24),
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

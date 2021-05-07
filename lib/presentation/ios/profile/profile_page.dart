import 'package:dart_counter/domain/careerStats/career_stats.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_action_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:dart_counter/presentation/ios/profile/widgets/career_stats/career_stats.dart';
import 'package:dart_counter/presentation/ios/profile/widgets/header.dart';
import 'package:dart_counter/presentation/ios/profile/widgets/sub_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
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
                  mobile: ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
                ),
              ),
              Expanded(
                flex: 2,
                child: SubHeader(),
              ),
              SizedBox(
                height: responsiveDouble(
                  context: context,
                  mobile: ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
                ),
              ),
              Expanded(
                flex: 8,
                child: CareerStatsDisplayer(
                  careerStats: CareerStats.empty(),
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
                onPressed: () {},
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
    );
  }
}

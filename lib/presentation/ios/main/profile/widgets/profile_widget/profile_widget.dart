import 'package:dart_counter/application/profile/profile_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';
import 'widgets/widgets.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final photoUrl = state.user.profile.photoUrl;

        return Column(
          children: [
            const AppSpacer.small(),
            ProfileImageDisplayer(
              photoUrl: photoUrl,
            ),
            const AppSpacer.large(),
            Container(
              height: size50(context),
              color: AppColors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppNavigationBarButton(
                      // TODO not navbarbutton here
                      onPressed: () {},
                      child: Image.asset(AppImages.chevronWhiteBackNew),
                    ),
                    Text(
                      'Offline'.toUpperCase(),
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .copyWith(color: AppColors.white),
                    ),
                    AppNavigationBarButton(
                      // TODO not navbar button here
                      onPressed: () {},
                      child: Image.asset(AppImages.chevronWhiteForwardNew),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              child: PageView(
                children: [
                  const PageX(),
                  const PageX(),
                  const PageX(),
                ],
              ),
            ),
          
            AppActionButton.normal(
              
              text: 'Game History',
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }
}

class PageX extends StatelessWidget {
  const PageX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TODO extract to widget
        const AppSpacer.small(),
        const CareerStatsDisplayer(),
      ],
    );
  }
}

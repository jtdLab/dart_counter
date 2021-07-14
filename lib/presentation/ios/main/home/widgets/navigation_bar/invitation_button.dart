import 'package:dart_counter/application/home/home_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/widgets/app_navigation_bar_button.dart';

class InvitationButton extends StatelessWidget {
  const InvitationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final unreadReceivedInvitations = state.unreadInvitations;

        if (unreadReceivedInvitations == 0) {
          return AppNavigationBarButton(
            onPressed: () {
              context
                  .read<HomeBloc>()
                  .add(const HomeEvent.goToInvitationsPressed());
              context.router.push(const InvitationsPageRoute());
            },
            child: Image.asset(
              AppImages.message_new,
              fit: BoxFit.fitHeight,
            ),
          );
        } else {
          return Badge(
            badgeContent: Text(
              unreadReceivedInvitations.toString(),
              style: const TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            position: BadgePosition.topEnd(
              top: -13,
            ),
            child: AppNavigationBarButton(
              onPressed: () {
                context
                    .read<HomeBloc>()
                    .add(const HomeEvent.goToInvitationsPressed());
                context.router.push(const InvitationsPageRoute());
              },
              child: Image.asset(
                AppImages.message_new,
                fit: BoxFit.fitHeight,
              ),
            ),
          );
        }
      },
    );
  }
}

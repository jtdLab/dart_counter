import 'package:badges/badges.dart';

import 'package:dart_counter/application/core/invitation/invitation_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/widgets/app_navigation_bar_button.dart';

class InvitationButton extends StatelessWidget {
  const InvitationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvitationBloc, InvitationState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (loadSuccess) {
            final invitations = loadSuccess.gameInvitations;
            final countNewInvitations = invitations
                .asList()
                .where((invitation) => !invitation.read)
                .length;

            if (countNewInvitations == 0) {
              return AppNavigationBarButton(
                onPressed: () =>
                    context.router.push(const InvitationsPageRoute()),
                child: Image.asset(
                  AppImages.message_new,
                  fit: BoxFit.fitHeight,
                ),
              );
            } else {
              return Badge(
                badgeContent: Text(
                  countNewInvitations.toString(),
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
              );
            }
          },
          orElse: () => AppNavigationBarButton(
            onPressed: () => context.router.push(const InvitationsPageRoute()),
            child: Image.asset(
              AppImages.message_new,
              fit: BoxFit.fitHeight,
            ),
          ),
        );
      },
    );
  }
}

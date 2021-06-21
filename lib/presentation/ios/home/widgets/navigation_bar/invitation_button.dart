import 'package:badges/badges.dart';
import 'package:dart_counter/application/core/invitation/invitation_bloc.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

class InvitationButton extends StatelessWidget {
  const InvitationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Badge(
      badgeContent: BlocBuilder<InvitationBloc, InvitationState>(
        builder: (context, state) => state.maybeMap(
          loadSuccess: (loadSuccess) => Text(
            loadSuccess.gameInvitations.size.toString(),
            style: const TextStyle(
                color: AppColors.white, fontWeight: FontWeight.bold),
          ),
          orElse: () => const Text(
            '0',
            style:
                TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      position: BadgePosition.topEnd(
        top: -13,
      ),
      child: AppNavigationBarButton(
        onPressed: () => context.router.push(const InvitationsPageRoute()),
        child: Image.asset(
          AppImages.message_new,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}

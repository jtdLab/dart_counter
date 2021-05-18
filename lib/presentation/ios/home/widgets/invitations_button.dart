import 'package:auto_size_text/auto_size_text.dart';
import 'package:badges/badges.dart';
import 'package:dart_counter/application/home/game_invitation_button/game_invitation_button_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/home/widgets/home_button.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InvitationsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<GameInvitationButtonBloc>()
            ..add(const GameInvitationButtonEvent.watchDataStarted()),
        ),
      ],
      child: BlocBuilder<GameInvitationButtonBloc, GameInvitationButtonState>(
        builder: (context, state) => HomeButton(
          onPressed: () => context.router.push(const InvitationsPageRoute()),
          builder: (context, boxConstraints) {
            return Column(
              children: [
                const Spacer(),
                Visibility(
                  visible: state.map(
                    noData: (_) => false,
                    data: (_) => true,
                  ),
                  child: Badge(
                    badgeContent: Text(
                      state.map(
                        noData: (_) => '',
                        data: (e) => e.newGameInvitations.toString(),
                      ),
                      style: const TextStyle(
                          color: AppColors.white, fontWeight: FontWeight.bold),
                    ),
                    position: BadgePosition.topEnd(top: -5, end: -5),
                    child: Image.asset(
                      AppImages.iconInvite,
                      fit: BoxFit.fill,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                const Spacer(),
                AutoSizeText(
                  LocaleKeys.invitations.tr().toUpperCase(),
                  maxLines: 1,
                  style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w900,
                      color: AppColors.white),
                ),
                const Spacer(),
              ],
            );
          },
        ),
      ),
    );
  }
}

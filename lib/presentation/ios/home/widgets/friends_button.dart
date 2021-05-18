import 'package:auto_size_text/auto_size_text.dart';
import 'package:badges/badges.dart';
import 'package:dart_counter/application/home/friend_button/friend_button_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/home/widgets/home_button.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FriendsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<FriendButtonBloc>()
            ..add(const FriendButtonEvent.watchDataStarted()),
        ),
      ],
      child: BlocBuilder<FriendButtonBloc, FriendButtonState>(
        builder: (context, state) => HomeButton(
          onPressed: () => context.router.push(const FriendsPageRoute()),
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
                        data: (e) => e.newFriendRequests.toString(),
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
                  LocaleKeys.friends.tr().toUpperCase(),
                  maxLines: 1,
                  style: TextStyle(
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

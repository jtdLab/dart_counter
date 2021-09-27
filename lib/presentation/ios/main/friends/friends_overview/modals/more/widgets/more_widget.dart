import 'package:dart_counter/application/friends/friends_bloc.dart';
import 'package:dart_counter/application/friends/more/more_bloc.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';

// TODO uses apppage one ebebne über
class MoreWidget extends StatelessWidget {
  const MoreWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: AppColumn(
          spacing: size6(context),
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppSpacer.large(),
            AppPrimaryButton(
              //text: LocaleKeys.takePhoto.tr().toUpperCase(),
              text: 'Show Profile'.toUpperCase(),
              onPressed: () {
                context.read<FriendsBloc>().add(FriendsEvent.friendSelected(
                    friend: User.dummy())); // TODO real user

                context.read<MoreBloc>().add(MoreEvent.showProfilePressed(
                    friend: User.dummy())); // TODO real user
                context.router.pop();
              },
            ),
            AppPrimaryButton(
              // text: LocaleKeys.choosePhoto.tr().toUpperCase(),
              text: 'Remove'.toUpperCase(),
              onPressed: () {
                context.read<MoreBloc>().add(MoreEvent.removePressed(
                    friend: User.dummy())); // TODO real user
                context.router.pop();
              },
            ),
            AppPrimaryButton(
              text: LocaleKeys.done.tr().toUpperCase(),
              onPressed: () => context.router.pop(),
            ),
            const AppSpacer.custom(
              mobileSize: ResponsiveDouble(
                small: 40,
                normal: 50,
                large: 50,
                extraLarge: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

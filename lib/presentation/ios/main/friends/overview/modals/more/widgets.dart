part of 'more_modal.dart';

// BODY
// TODO uses apppage one ebebne über
class _MoreWidget extends StatelessWidget {
  const _MoreWidget({
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
                    friend: Friend.dummy())); // TODO real user

                context.read<MoreBloc>().add(MoreEvent.showProfilePressed(
                    friend: Friend.dummy())); // TODO real user
                context.router.pop();
              },
            ),
            AppPrimaryButton(
              // text: LocaleKeys.choosePhoto.tr().toUpperCase(),
              text: 'Remove'.toUpperCase(),
              onPressed: () {
                context.read<MoreBloc>().add(MoreEvent.removePressed(
                    friend: Friend.dummy())); // TODO real user
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

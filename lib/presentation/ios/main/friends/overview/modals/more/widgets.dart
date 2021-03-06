part of 'more_modal.dart';

// BODY
// TODO uses apppage one ebebne über
class _MoreWidget extends StatelessWidget {
  const _MoreWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: spacerLarge(context),
        ),
        AppPrimaryButton(
          //text: LocaleKeys.takePhoto.tr().toUpperCase(),
          text: 'Show Profile'.toUpperCase(), // TODO
          onPressed: () {
            context.router.pop();
            context.router.push(const FriendsProfilePageRoute());
          },
        ),
        AppPrimaryButton(
          // text: LocaleKeys.choosePhoto.tr().toUpperCase(),
          text: 'Remove'.toUpperCase(), // TODO
          onPressed: () {
            context.read<MoreBloc>().add(const MoreEvent.removePressed());
            context.router.pop();
          },
        ),
        AppPrimaryButton(
          text: LocaleKeys.done.tr().toUpperCase(),
          onPressed: () => context.router.pop(),
        ),
        SizedBox(
          height: detailedModalMarginBottom(context),
        ),
      ],
    );
  }
}

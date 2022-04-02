part of 'more_modal.dart';

// BODY
class MoreView extends StatelessWidget {
  const MoreView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppModal(
      child: AppColumn(
        spacing: size6(context),
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: spacerLarge(context),
          ),
          AppPrimaryButton(
            //text: context.l10n.takePhoto.toUpperCase(),
            text: 'Show Profile'.toUpperCase(), // TODO
            onPressed: () {
              context.router.pop();
              context.router.push(const FriendsProfilePageRoute());
            },
          ),
          AppPrimaryButton(
            // text: context.l10n.choosePhoto.toUpperCase(),
            text: 'Remove'.toUpperCase(), // TODO
            onPressed: () {
              context.read<MoreBloc>().add(const MoreEvent.removePressed());
              context.router.pop();
            },
          ),
          AppPrimaryButton(
            text: context.l10n.done.toUpperCase(),
            onPressed: () => context.router.pop(),
          ),
          SizedBox(
            height: detailedModalMarginBottom(context),
          ),
        ],
      ),
    );
  }
}

part of './edit_profile_image_modal.dart';

// BODY
// TODO uses apppage one ebebne über
class _EditProfileImageWidget extends StatelessWidget {
  const _EditProfileImageWidget({
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
          text: LocaleKeys.deletePhoto.tr().toUpperCase(),
          color: AppColors.red,
          onPressed: () {
            context
                .read<EditProfileImageBloc>()
                .add(const EditProfileImageEvent.deletePressed());
            context.router.pop();
          },
        ),
        AppPrimaryButton(
          text: LocaleKeys.takePhoto.tr().toUpperCase(),
          onPressed: () {
            context
                .read<EditProfileImageBloc>()
                .add(const EditProfileImageEvent.takePressed());
            context.router.pop();
          },
        ),
        AppPrimaryButton(
          text: LocaleKeys.choosePhoto.tr().toUpperCase(),
          onPressed: () {
            context
                .read<EditProfileImageBloc>()
                .add(const EditProfileImageEvent.choosePressed());
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

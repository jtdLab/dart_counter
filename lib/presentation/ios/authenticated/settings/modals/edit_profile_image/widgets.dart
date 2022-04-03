part of './edit_profile_image_modal.dart';

class EditProfileImageView extends StatelessWidget {
  const EditProfileImageView({Key? key}) : super(key: key);

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
            text: context.l10n.deletePhoto.toUpperCase(),
            color: AppColors.red,
            onPressed: () {
              context
                  .read<EditProfileImageBloc>()
                  .add(const EditProfileImageEvent.deletePressed());
              context.router.pop();
            },
          ),
          AppPrimaryButton(
            text: context.l10n.takePhoto.toUpperCase(),
            onPressed: () {
              context
                  .read<EditProfileImageBloc>()
                  .add(const EditProfileImageEvent.takePressed());
              context.router.pop();
            },
          ),
          AppPrimaryButton(
            text: context.l10n.choosePhoto.toUpperCase(),
            onPressed: () {
              context
                  .read<EditProfileImageBloc>()
                  .add(const EditProfileImageEvent.choosePressed());
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

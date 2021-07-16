import 'package:dart_counter/application/settings/edit_profile_image/edit_profile_image_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';

// TODO refactor + responsive
class EditProfileImageWidget extends StatelessWidget {
  const EditProfileImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 30,
              child: Container(
                color: Colors.transparent,
              ),
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
            const AppSpacer.normal(),
            AppPrimaryButton(
              text: LocaleKeys.takePhoto.tr().toUpperCase(),
              onPressed: () {
                context
                    .read<EditProfileImageBloc>()
                    .add(const EditProfileImageEvent.takePressed());
                context.router.pop();
              },
            ),
            const AppSpacer.normal(),
            AppPrimaryButton(
              text: LocaleKeys.choosePhoto.tr().toUpperCase(),
              onPressed: () {
                context
                    .read<EditProfileImageBloc>()
                    .add(const EditProfileImageEvent.choosePressed());
                context.router.pop();
              },
            ),
            const AppSpacer.normal(),
            AppPrimaryButton(
              text: LocaleKeys.done.tr().toUpperCase(),
              onPressed: () => context.router.pop(),
            ),
            SizedBox(
              height: 50,
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

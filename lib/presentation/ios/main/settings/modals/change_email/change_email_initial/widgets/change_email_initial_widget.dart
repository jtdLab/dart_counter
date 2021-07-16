import 'package:dart_counter/application/settings/change_email/change_email_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_text_field/app_text_field.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/logo_displayer.dart';

class ChangeEmailInitialWidget extends StatelessWidget {
  const ChangeEmailInitialWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Column(
      children: [
        // TODO  size for diffrent size classes
        const AppSpacer.custom(
          mobileSize: ResponsiveDouble(
            small: 70,
            normal: 70,
            large: 70,
            extraLarge: 70,
          ),
        ),
        const LogoDisplayer(),
        // TODO  size for diffrent size classes
        const AppSpacer.custom(
          mobileSize: ResponsiveDouble(
            small: 120,
            normal: 120,
            large: 120,
            extraLarge: 120,
          ),
        ),
        SizedBox(
          height: 3 * (size40(context) + size12(context)),
          child: Text(
            LocaleKeys.changeEmail.tr().toUpperCase(),
          ),
        ),
        AppTextField(
          placeholder: LocaleKeys.email.tr().toUpperCase(),
          textInputAction: TextInputAction.done,
          onEditingComplete: () => node.unfocus(),
          onChanged: (newEmailString) => context.read<ChangeEmailBloc>().add(
                ChangeEmailEvent.newEmailChanged(
                  newEmailString: newEmailString,
                ),
              ),
        ),
        AppPrimaryButton(
          text: LocaleKeys.confirm.tr().toUpperCase(),
          onPressed: () => context
              .read<ChangeEmailBloc>()
              .add(const ChangeEmailEvent.confirmPressed()),
        ),
        const Spacer(),
      ],
    );
  }
}

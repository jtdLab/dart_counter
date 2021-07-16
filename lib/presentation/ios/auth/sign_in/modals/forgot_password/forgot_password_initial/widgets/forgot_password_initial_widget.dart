import 'package:dart_counter/application/sign_in/forgot_password/forgot_password_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_text_field/app_text_field.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/logo_displayer.dart';

class ForgotPasswordInitialWidget extends StatelessWidget {
  const ForgotPasswordInitialWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Column(
      children: [
        const AppSpacer.custom(
          mobileSize: ResponsiveDouble(
            small: 70,
            normal: 70,
            large: 70,
            extraLarge: 70,
          ),
        ),
        const LogoDisplayer(),
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
            LocaleKeys.forgotPassword.tr().toUpperCase(),
          ),
        ),
        AppTextField(
          placeholder: LocaleKeys.email.tr(),
          textInputAction: TextInputAction.done,
          onEditingComplete: () => node.unfocus(),
          onChanged: (emailString) => context
              .read<ForgotPasswordBloc>()
              .add(ForgotPasswordEvent.emailChanged(emailString: emailString)),
        ),
        AppPrimaryButton(
          text: LocaleKeys.confirm.tr(),
          onPressed: () => context
              .read<ForgotPasswordBloc>()
              .add(const ForgotPasswordEvent.confirmPressed()),
        ),
        const Spacer(),
      ],
    );
  }
}

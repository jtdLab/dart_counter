part of './sign_up_page.dart';

class _SignUpWidget extends StatelessWidget {
  const _SignUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        final node = FocusScope.of(context);

        return Column(
          children: [
            SizedBox(
              height: modalLogoMarginTop(context),
            ),
            const LogoDisplayer(),
            SizedBox(
              height: modalLogoMarginBottom(context),
            ),
            AppTextField(
              placeholder: LocaleKeys.email.tr(),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              onEditingComplete: () => node.nextFocus(),
              onChanged: (emailString) {
                context.read<SignUpBloc>().add(
                      SignUpEvent.emailChanged(emailString),
                    );
              },
              valid: !state.showErrorMessages ||
                  (state.showErrorMessages && state.email.isValid()),
              errorMessage: LocaleKeys.errorInvalidEmailAddress.tr(),
            ),
            AppTextField(
              placeholder: LocaleKeys.username.tr(),
              textInputAction: TextInputAction.next,
              onEditingComplete: () => node.nextFocus(),
              onChanged: (usernameString) => context.read<SignUpBloc>().add(
                    SignUpEvent.usernameChanged(usernameString),
                  ),
              valid: !state.showErrorMessages ||
                  (state.showErrorMessages && state.username.isValid()),
              errorMessage: LocaleKeys.errorInvalidUsername.tr(),
            ),
            AppTextField(
              obscureText: true,
              placeholder: LocaleKeys.password.tr(),
              textInputAction: TextInputAction.next,
              onEditingComplete: () => node.nextFocus(),
              onChanged: (passwordString) => context.read<SignUpBloc>().add(
                    SignUpEvent.passwordChanged(passwordString),
                  ),
              valid: !state.showErrorMessages ||
                  (state.showErrorMessages && state.password.isValid()),
              errorMessage: LocaleKeys.errorInvalidPassword.tr(),
            ),
            AppTextField(
              obscureText: true,
              placeholder: LocaleKeys.passwordAgain.tr(),
              textInputAction: TextInputAction.done,
              onEditingComplete: () => node.unfocus(),
              onChanged: (passwordAgainString) =>
                  context.read<SignUpBloc>().add(
                        SignUpEvent.passwordAgainChanged(passwordAgainString),
                      ),
              valid: !state.showErrorMessages ||
                  (state.showErrorMessages &&
                      state.password.isValid() &&
                      state.password == state.passwordAgain),
              errorMessage: LocaleKeys.errorPasswordsDontMatch.tr(),
            ),
            AppPrimaryButton(
              isSubmitting: state.isSubmitting,
              text: LocaleKeys.signUp.tr(),
              onPressed: () => context
                  .read<SignUpBloc>()
                  .add(const SignUpEvent.signUpPressed()),
            ),
            SizedBox(
              height: spacerSmall(context),
            ),
            AppLinkButton(
              text: LocaleKeys.signIn.tr(),
              onPressed: () {
                context.read<PageController>().animateToPage(
                      0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
              },
            ),
            const Spacer(),
          ],
        );
      },
    );
  }
}

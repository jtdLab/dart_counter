part of './sign_up_page.dart';

class _SignUpWidget extends StatelessWidget {
  const _SignUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (_, next) => next is SignUpInitial,
      builder: (context, state) {
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
                      SignUpEvent.emailChanged(newEmail: emailString),
                    );
              },
              valid: state.mapOrNull(
                initial: (initial) =>
                    !initial.showErrorMessages ||
                    (initial.showErrorMessages && initial.email.isValid()),
              ),
              errorMessage: LocaleKeys.errorInvalidEmailAddress.tr(),
            ),
            AppTextField(
              placeholder: LocaleKeys.username.tr(),
              textInputAction: TextInputAction.next,
              onEditingComplete: () => node.nextFocus(),
              onChanged: (usernameString) => context.read<SignUpBloc>().add(
                    SignUpEvent.usernameChanged(newUsername: usernameString),
                  ),
              valid: state.mapOrNull(
                initial: (initial) =>
                    !initial.showErrorMessages ||
                    (initial.showErrorMessages && initial.username.isValid()),
              ),
              errorMessage: LocaleKeys.errorInvalidUsername.tr(),
            ),
            AppTextField(
              obscureText: true,
              placeholder: LocaleKeys.password.tr(),
              textInputAction: TextInputAction.next,
              onEditingComplete: () => node.nextFocus(),
              onChanged: (passwordString) => context.read<SignUpBloc>().add(
                    SignUpEvent.passwordChanged(newPassword: passwordString),
                  ),
              valid: state.mapOrNull(
                initial: (initial) =>
                    !initial.showErrorMessages ||
                    (initial.showErrorMessages && initial.password.isValid()),
              ),
              errorMessage: LocaleKeys.errorInvalidPassword.tr(),
            ),
            AppTextField(
              obscureText: true,
              placeholder: LocaleKeys.passwordAgain.tr(),
              textInputAction: TextInputAction.done,
              onEditingComplete: () => node.unfocus(),
              onChanged: (passwordAgainString) =>
                  context.read<SignUpBloc>().add(
                        SignUpEvent.passwordAgainChanged(
                          newPasswordAgain: passwordAgainString,
                        ),
                      ),
              valid: state.mapOrNull(
                initial: (initial) =>
                    !initial.showErrorMessages ||
                    (initial.showErrorMessages &&
                        initial.password.isValid() &&
                        initial.password == initial.passwordAgain),
              ),
              errorMessage: LocaleKeys.errorPasswordsDontMatch.tr(),
            ),
            BlocBuilder<SignUpBloc, SignUpState>(
              buildWhen: (prev, next) =>
                  prev is SignUpLoadInProgress || next is SignUpLoadInProgress,
              builder: (context, state) {
                return AppPrimaryButton(
                  isSubmitting: state is SignUpLoadInProgress,
                  text: LocaleKeys.signIn.tr(),
                  onPressed: () => context.read<SignUpBloc>().add(
                        const SignUpEvent.signUpPressed(),
                      ),
                );
              },
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

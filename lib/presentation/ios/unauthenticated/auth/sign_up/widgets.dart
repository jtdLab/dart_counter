part of 'sign_up_page.dart';

class SignUpView extends StatelessWidget {
  static const Key logoKey = Key('logo');
  static const Key emailTextFieldKey = Key('email_text_field');
  static const Key usernameTextFieldKey = Key('username_text_field');
  static const Key passwordTextFieldKey = Key('password_text_field');
  static const Key passwordAgainTextFieldKey = Key('password_again_text_field');
  static const Key signUpButtonKey = Key('sign_up_button');
  static const Key goToSignInButtonKey = Key('go_to_sign_in_button');

  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

    return AppPage(
      onTap: () => node.unfocus(),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final bottomInsets = MediaQuery.of(context).viewInsets.bottom;

          return SingleChildScrollView(
            physics:
                bottomInsets == 0 ? const NeverScrollableScrollPhysics() : null,
            child: ConstrainedBox(
              constraints: constraints.copyWith(
                maxHeight: constraints.maxHeight + bottomInsets,
              ),
              child: BlocBuilder<SignUpBloc, SignUpState>(
                buildWhen: (_, current) => current is SignUpInitial,
                builder: (context, state) {
                  return Column(
                    children: [
                      SizedBox(height: modalLogoMarginTop(context)),
                      const LogoDisplayer(key: logoKey),
                      SizedBox(height: modalLogoMarginBottom(context)),
                      AppTextField(
                        key: emailTextFieldKey,
                        placeholder: context.l10n.email,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        onEditingComplete: () => node.nextFocus(),
                        onChanged: (email) => _onEmailChanged(context, email),
                        valid: state.mapOrNull(
                          initial: (initial) =>
                              !initial.showErrorMessages ||
                              (initial.showErrorMessages &&
                                  initial.email.isValid()),
                        ),
                        errorMessage: context.l10n.errorInvalidEmailAddress,
                      ),
                      AppTextField(
                        key: usernameTextFieldKey,
                        placeholder: context.l10n.username,
                        textInputAction: TextInputAction.next,
                        onEditingComplete: () => node.nextFocus(),
                        onChanged: (username) =>
                            _onUsernameChanged(context, username),
                        valid: state.mapOrNull(
                          initial: (initial) =>
                              !initial.showErrorMessages ||
                              (initial.showErrorMessages &&
                                  initial.username.isValid()),
                        ),
                        errorMessage: context.l10n.errorInvalidUsername,
                      ),
                      AppTextField(
                        key: passwordTextFieldKey,
                        obscureText: true,
                        placeholder: context.l10n.password,
                        textInputAction: TextInputAction.next,
                        onEditingComplete: () => node.nextFocus(),
                        onChanged: (password) =>
                            _onPasswordChanged(context, password),
                        valid: state.mapOrNull(
                          initial: (initial) =>
                              !initial.showErrorMessages ||
                              (initial.showErrorMessages &&
                                  initial.password.isValid()),
                        ),
                        errorMessage: context.l10n.errorInvalidPassword,
                      ),
                      AppTextField(
                        key: passwordAgainTextFieldKey,
                        obscureText: true,
                        placeholder: context.l10n.passwordAgain,
                        textInputAction: TextInputAction.done,
                        onEditingComplete: () => node.unfocus(),
                        onChanged: (passwordAgain) =>
                            _onPasswordAgainChanged(context, passwordAgain),
                        valid: state.mapOrNull(
                          initial: (initial) =>
                              !initial.showErrorMessages ||
                              (initial.showErrorMessages &&
                                  initial.password.isValid() &&
                                  initial.password == initial.passwordAgain),
                        ),
                        errorMessage: context.l10n.errorPasswordsDontMatch,
                      ),
                      BlocBuilder<SignUpBloc, SignUpState>(
                        buildWhen: (previous, current) =>
                            previous is SignUpLoadInProgress ||
                            current is SignUpLoadInProgress,
                        builder: (context, state) {
                          return AppPrimaryButton(
                            key: signUpButtonKey,
                            isSubmitting: state is SignUpLoadInProgress,
                            text: context.l10n.signUp,
                            onPressed: () => _onSignUpPressed(context),
                          );
                        },
                      ),
                      SizedBox(height: spacerSmall(context)),
                      AppLinkButton(
                        key: goToSignInButtonKey,
                        text: context.l10n.signIn,
                        onPressed: () => _onGotSignInPressed(context),
                      ),
                      const Spacer(),
                    ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  void _onEmailChanged(BuildContext context, String email) {
    context.read<SignUpBloc>().add(
          SignUpEvent.emailChanged(newEmail: email),
        );
  }

  void _onUsernameChanged(BuildContext context, String username) {
    context.read<SignUpBloc>().add(
          SignUpEvent.usernameChanged(
            newUsername: username,
          ),
        );
  }

  void _onPasswordChanged(BuildContext context, String password) {
    context.read<SignUpBloc>().add(
          SignUpEvent.passwordChanged(newPassword: password),
        );
  }

  void _onPasswordAgainChanged(BuildContext context, String passwordAgain) {
    context.read<SignUpBloc>().add(
          SignUpEvent.passwordAgainChanged(
            newPasswordAgain: passwordAgain,
          ),
        );
  }

  void _onSignUpPressed(BuildContext context) {
    context.read<SignUpBloc>().add(
          const SignUpEvent.signUpPressed(),
        );
  }

  void _onGotSignInPressed(BuildContext context) {
    context.read<PageController>().animateToPage(
          0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
  }
}

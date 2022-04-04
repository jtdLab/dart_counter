part of 'sign_in_page.dart';

class SignInView extends StatelessWidget {
  static const Key logoKey = Key('logo');
  static const Key emailTextFieldKey = Key('email_text_field');
  static const Key passwordTextFieldKey = Key('password_text_field');
  static const Key signInButtonKey = Key('sign_in_button');
  static const Key showForgotPasswordButtonKey =
      Key('show_forgot_password_button');
  static const Key goToSignUpButtonKey = Key('go_to_sign_up_button');
  static const Key signInWithFacebookButtonKey =
      Key('sign_in_with_facebook_button');
  static const Key signInWithAppleButtonKey = Key('sign_in_with_apple_button');
  static const Key signInWithGoogleButtonKey =
      Key('sign_in_with_google_button');

  const SignInView({Key? key}) : super(key: key);

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
              child: Column(
                children: [
                  SizedBox(height: modalLogoMarginTop(context)),
                  const LogoDisplayer(key: logoKey),
                  SizedBox(height: modalLogoMarginBottom(context)),
                  AppTextField(
                    key: emailTextFieldKey,
                    placeholder: context.l10n.email,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    onEditingComplete: () => node.nextFocus(),
                    onChanged: (email) => _onEmailChanged(context, email),
                  ),
                  AppTextField(
                    key: passwordTextFieldKey,
                    textInputAction: TextInputAction.done,
                    onEditingComplete: () => node.unfocus(),
                    obscureText: true,
                    placeholder: context.l10n.password,
                    onChanged: (password) =>
                        _onPasswordChanged(context, password),
                  ),
                  BlocBuilder<SignInBloc, SignInState>(
                    buildWhen: (previous, current) =>
                        previous is SignInLoadInProgress ||
                        current is SignInLoadInProgress,
                    builder: (context, state) {
                      return AppPrimaryButton(
                        key: signInButtonKey,
                        isSubmitting: state is SignInLoadInProgress,
                        text: context.l10n.signIn,
                        onPressed: () => _onSignInPressed(context),
                      );
                    },
                  ),
                  SizedBox(height: spacerSmall(context)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppLinkButton(
                        key: showForgotPasswordButtonKey,
                        text: context.l10n.forgotPassword,
                        onPressed: () => _onShowForgotPasswordPressed(context),
                      ),
                      AppLinkButton(
                        key: goToSignUpButtonKey,
                        text: context.l10n.signUpNow,
                        onPressed: () => _onGotSignUpPressed(context),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _SocialSignInButton(
                        key: signInWithFacebookButtonKey,
                        onPressed: () => _onSignInWithFacebookPressed(context),
                        child: const FaIcon(
                          FontAwesomeIcons.facebookSquare,
                          size: 50,
                        ),
                      ),
                      _SocialSignInButton(
                        key: signInWithAppleButtonKey,
                        onPressed: () => _onSignInWithApplePressed(context),
                        child: const FaIcon(
                          FontAwesomeIcons.apple,
                          size: 50,
                        ),
                      ),
                      _SocialSignInButton(
                        key: signInWithGoogleButtonKey,
                        onPressed: () => _onSignInWithGooglePressed(context),
                        child: const FaIcon(
                          FontAwesomeIcons.googlePlusSquare,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20), // TODO clean ?
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onEmailChanged(BuildContext context, String email) {
    context.read<SignInBloc>().add(
          SignInEvent.emailChanged(newEmail: email),
        );
  }

  void _onPasswordChanged(BuildContext context, String password) {
    context.read<SignInBloc>().add(
          SignInEvent.passwordChanged(newPassword: password),
        );
  }

  void _onSignInPressed(BuildContext context) {
    context.read<SignInBloc>().add(
          const SignInEvent.signInPressed(),
        );
  }

  void _onShowForgotPasswordPressed(BuildContext context) {
    context.router.push(const ForgotPasswordModalRoute());
  }

  void _onGotSignUpPressed(BuildContext context) {
    context.read<PageController>().animateToPage(
          1,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
  }

  void _onSignInWithFacebookPressed(BuildContext context) {
    context.read<SignInBloc>().add(
          const SignInEvent.signInWithFacebookPressed(),
        );
  }

  void _onSignInWithApplePressed(BuildContext context) {
    context.read<SignInBloc>().add(
          const SignInEvent.signInWithApplePressed(),
        );
  }

  void _onSignInWithGooglePressed(BuildContext context) {
    context.read<SignInBloc>().add(
          const SignInEvent.signInWithGooglePressed(),
        );
  }
}

class _SocialSignInButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const _SocialSignInButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: SizedBox(
        width: 3 * size12(context),
        height: 3 * size12(context),
        child: child,
      ),
    );
  }
}

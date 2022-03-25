part of 'sign_in_page.dart';

class SignInView extends StatelessWidget {
  const SignInView({
    Key? key,
  }) : super(key: key);

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
                  SizedBox(
                    height: modalLogoMarginTop(context),
                  ),
                  const LogoDisplayer(),
                  SizedBox(
                    height: modalLogoMarginBottom(context),
                  ),
                  AppTextField(
                    placeholder: context.l10n.email,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    onEditingComplete: () => node.nextFocus(),
                    onChanged: (emailString) => context.read<SignInBloc>().add(
                          SignInEvent.emailChanged(newEmail: emailString),
                        ),
                  ),
                  AppTextField(
                    textInputAction: TextInputAction.done,
                    onEditingComplete: () => node.unfocus(),
                    obscureText: true,
                    placeholder: context.l10n.password,
                    onChanged: (passwordString) =>
                        context.read<SignInBloc>().add(
                              SignInEvent.passwordChanged(
                                  newPassword: passwordString),
                            ),
                  ),
                  BlocBuilder<SignInBloc, SignInState>(
                    buildWhen: (prev, next) =>
                        prev is SignInLoadInProgress ||
                        next is SignInLoadInProgress,
                    builder: (context, state) {
                      return AppPrimaryButton(
                        isSubmitting: state is SignInLoadInProgress,
                        text: context.l10n.signIn,
                        onPressed: () => context.read<SignInBloc>().add(
                              const SignInEvent.signInPressed(),
                            ),
                      );
                    },
                  ),
                  SizedBox(
                    height: spacerSmall(context),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppLinkButton(
                        text: context.l10n.forgotPassword,
                        onPressed: () => context.router
                            .push(const ForgotPasswordModalRoute()),
                      ),
                      AppLinkButton(
                        text: context.l10n.signUpNow,
                        onPressed: () {
                          context.read<PageController>().animateToPage(
                                1,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                              );
                        },
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _SocialSignInButton(
                        onPressed: () => context.read<SignInBloc>().add(
                              const SignInEvent.signInWithFacebookPressed(),
                            ),
                        child: const FaIcon(
                          FontAwesomeIcons.facebookSquare,
                          size: 50,
                        ),
                      ),
                      _SocialSignInButton(
                        onPressed: () => context.read<SignInBloc>().add(
                              const SignInEvent.signInWithApplePressed(),
                            ),
                        child: const FaIcon(
                          FontAwesomeIcons.apple,
                          size: 50,
                        ),
                      ),
                      _SocialSignInButton(
                        onPressed: () => context.read<SignInBloc>().add(
                              const SignInEvent.signInWithGooglePressed(),
                            ),
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

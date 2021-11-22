part of './sign_in_page.dart';

class _SignInWidget extends StatelessWidget {
  const _SignInWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          placeholder: LocaleKeys.password.tr(),
          onChanged: (passwordString) => context.read<SignInBloc>().add(
                SignInEvent.passwordChanged(newPassword: passwordString),
              ),
        ),
        BlocBuilder<SignInBloc, SignInState>(
          buildWhen: (prev, next) =>
              prev is SignInLoadInProgress || next is SignInLoadInProgress,
          builder: (context, state) {
            return AppPrimaryButton(
              isSubmitting: state is SignInLoadInProgress,
              text: LocaleKeys.signIn.tr(),
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
              text: LocaleKeys.forgotPassword.tr(),
              onPressed: () {
                showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  builder: (context) => const ForgotPasswordModal(),
                );
              },
            ),
            AppLinkButton(
              text: LocaleKeys.signUpNow.tr(),
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
              child: Image.asset(AppImages.fbNew),
            ),
            _SocialSignInButton(
              onPressed: () => context.read<SignInBloc>().add(
                    const SignInEvent.signInWithApplePressed(),
                  ),
              child: Image.asset(AppImages.igNew),
            ),
            _SocialSignInButton(
              onPressed: () => context.read<SignInBloc>().add(
                    const SignInEvent.signInWithGooglePressed(),
                  ),
              child: Image.asset(AppImages.googleNew),
            ),
          ],
        ),
      ],
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

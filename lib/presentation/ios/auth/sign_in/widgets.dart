part of './sign_in_page.dart';

class _SignInWidget extends StatelessWidget {
  const _SignInWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
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
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              onEditingComplete: () => node.nextFocus(),
              onChanged: (emailString) => context.read<SignInBloc>().add(
                    SignInEvent.emailChanged(emailString),
                  ),
            ),
            AppTextField(
              textInputAction: TextInputAction.done,
              onEditingComplete: () => node.unfocus(),
              obscureText: true,
              placeholder: LocaleKeys.password.tr(),
              onChanged: (passwordString) => context.read<SignInBloc>().add(
                    SignInEvent.passwordChanged(passwordString),
                  ),
            ),
            AppPrimaryButton(
              isSubmitting: state.isSubmitting,
              text: LocaleKeys.signIn.tr(),
              onPressed: () => context.read<SignInBloc>().add(
                    const SignInEvent.signInPressed(),
                  ),
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
                Container(
                  color: AppColors.red,
                  child: CupertinoButton(
                    onPressed: () => context.read<SignInBloc>().add(
                          const SignInEvent.signInWithFacebookPressed(),
                        ),
                    child: Image.asset(AppImages.fbNew),
                  ),
                ),
                Container(
                  color: AppColors.red,
                  child: CupertinoButton(
                    onPressed: () => context.read<SignInBloc>().add(
                          const SignInEvent.signInWithApplePressed(),
                        ),
                    child: Image.asset(AppImages.igNew),
                  ),
                ),
                Container(
                  color: AppColors.red,
                  child: CupertinoButton(
                    onPressed: () => context.read<SignInBloc>().add(
                          const SignInEvent.signInWithGooglePressed(),
                        ),
                    child: Image.asset(AppImages.googleNew),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

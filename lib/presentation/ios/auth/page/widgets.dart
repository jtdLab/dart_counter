part of 'auth_page.dart';

class _AuthWidget extends HookWidget {
  const _AuthWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController = usePageController();

    return ListenableProvider.value(
      value: pageController,
      child: PageView(
        controller: pageController,
        children: const [
          _SignInPage(),
          _SignUpPage(),
        ],
      ),
    );
  }
}

class _SignInPage extends StatelessWidget {
  const _SignInPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) => state.whenOrNull(
              authenticated: () =>
                  context.router.replace(const MainFlowRoute()),
            ),
          ),
          BlocListener<SignInBloc, SignInState>(
            listenWhen: (_, next) => next is SignInLoadFailure,
            listener: (context, state) => state.mapOrNull(
              loadFailure: (signInLoadFailure) {
                signInLoadFailure.failure.whenOrNull(
                  // TODO show server error feels not perfect
                  serverError: () => showToast(LocaleKeys.errorServer.tr()),
                  invalidEmailAndPasswordCombination: () => showToast(
                    LocaleKeys.errorInvalidEmailAndPasswordCombination.tr(),
                  ),
                );
              },
            ),
          ),
        ],
        child: AppPage(
          onTap: () => FocusScope.of(context).unfocus(),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final bottomInsets = MediaQuery.of(context).viewInsets.bottom;

              return SingleChildScrollView(
                physics: bottomInsets == 0
                    ? const NeverScrollableScrollPhysics()
                    : null,
                child: ConstrainedBox(
                  constraints: constraints.copyWith(
                    maxHeight: constraints.maxHeight + bottomInsets,
                  ),
                  child: const _SignInWidget(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

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
              onPressed: () =>
                  context.router.push(const ForgotPasswordModalRoute()),
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

class _SignUpPage extends StatelessWidget {
  const _SignUpPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpBloc>(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.whenOrNull(
                authenticated: () =>
                    context.router.replace(const MainFlowRoute()),
              );
            },
          ),
          BlocListener<SignUpBloc, SignUpState>(
            listenWhen: (_, next) => next is SignUpLoadFailure,
            listener: (context, state) {
              state.mapOrNull(
                loadFailure: (signInLoadFailure) {
                  signInLoadFailure.failure.whenOrNull(
                    serverError: () => showToast(LocaleKeys.errorServer.tr()),
                  );
                },
              );
            },
          ),
        ],
        child: AppPage(
          onTap: () => FocusScope.of(context).unfocus(),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final bottomInsets = MediaQuery.of(context).viewInsets.bottom;

              return SingleChildScrollView(
                physics: bottomInsets == 0
                    ? const NeverScrollableScrollPhysics()
                    : null,
                child: ConstrainedBox(
                  constraints: constraints.copyWith(
                    maxHeight: constraints.maxHeight + bottomInsets,
                  ),
                  child: const _SignUpWidget(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

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

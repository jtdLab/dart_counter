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
      create: (context) => SignInBloc.getIt(),
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
                  serverError: () => showToast(context.l10n.errorServer),
                  invalidEmailAndPasswordCombination: () => showToast(
                    context.l10n.errorInvalidEmailAndPasswordCombination,
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
              onPressed: () =>
                  context.router.push(const ForgotPasswordModalRoute()),
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
      create: (context) => SignUpBloc.getIt(),
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
                    serverError: () => showToast(context.l10n.errorServer),
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
              placeholder: context.l10n.email,
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
              errorMessage: context.l10n.errorInvalidEmailAddress,
            ),
            AppTextField(
              placeholder: context.l10n.username,
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
              errorMessage: context.l10n.errorInvalidUsername,
            ),
            AppTextField(
              obscureText: true,
              placeholder: context.l10n.password,
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
              errorMessage: context.l10n.errorInvalidPassword,
            ),
            AppTextField(
              obscureText: true,
              placeholder: context.l10n.passwordAgain,
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
              errorMessage: context.l10n.errorPasswordsDontMatch,
            ),
            BlocBuilder<SignUpBloc, SignUpState>(
              buildWhen: (prev, next) =>
                  prev is SignUpLoadInProgress || next is SignUpLoadInProgress,
              builder: (context, state) {
                return AppPrimaryButton(
                  isSubmitting: state is SignUpLoadInProgress,
                  text: context.l10n.signIn,
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
              text: context.l10n.signIn,
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

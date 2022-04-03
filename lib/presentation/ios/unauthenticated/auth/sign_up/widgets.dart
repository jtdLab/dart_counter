part of 'sign_up_page.dart';

class SignUpView extends StatelessWidget {
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
                              (initial.showErrorMessages &&
                                  initial.email.isValid()),
                        ),
                        errorMessage: context.l10n.errorInvalidEmailAddress,
                      ),
                      AppTextField(
                        placeholder: context.l10n.username,
                        textInputAction: TextInputAction.next,
                        onEditingComplete: () => node.nextFocus(),
                        onChanged: (usernameString) =>
                            context.read<SignUpBloc>().add(
                                  SignUpEvent.usernameChanged(
                                      newUsername: usernameString),
                                ),
                        valid: state.mapOrNull(
                          initial: (initial) =>
                              !initial.showErrorMessages ||
                              (initial.showErrorMessages &&
                                  initial.username.isValid()),
                        ),
                        errorMessage: context.l10n.errorInvalidUsername,
                      ),
                      AppTextField(
                        obscureText: true,
                        placeholder: context.l10n.password,
                        textInputAction: TextInputAction.next,
                        onEditingComplete: () => node.nextFocus(),
                        onChanged: (passwordString) =>
                            context.read<SignUpBloc>().add(
                                  SignUpEvent.passwordChanged(
                                      newPassword: passwordString),
                                ),
                        valid: state.mapOrNull(
                          initial: (initial) =>
                              !initial.showErrorMessages ||
                              (initial.showErrorMessages &&
                                  initial.password.isValid()),
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
                            prev is SignUpLoadInProgress ||
                            next is SignUpLoadInProgress,
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
              ),
            ),
          );
        },
      ),
    );
  }
}

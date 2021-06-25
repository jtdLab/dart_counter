import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/auth/sign_up/sign_up_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SignUpWidget extends StatelessWidget {
  final PageController pageController;

  const SignUpWidget({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.authFailureOrSuccess?.fold(
          (failure) {
            failure.maybeWhen(
              serverError: () => showToast(LocaleKeys.errorServer.tr()),
              emailAlreadyInUse: () =>
                  showToast(LocaleKeys.errorEmailAlreadyInUse.tr()),
              orElse: () {},
            );
          },
          (_) {
            context.router.replace(const HomePageRoute());
            context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
          },
        );
      },
      builder: (context, state) {
        final node = FocusScope.of(context);
        return Column(
          children: [
            // TODO
            const AppSpacer.custom(
              mobileSize: ResponsiveDouble(
                small: 70,
                normal: 70,
                large: 70,
                extraLarge: 70,
              ),
            ),
            const LogoDisplayer(),
            // TODO
            const AppSpacer.custom(
              mobileSize: ResponsiveDouble(
                small: 120,
                normal: 120,
                large: 120,
                extraLarge: 120,
              ),
            ),
            AppTextField(
              placeholder: LocaleKeys.email.tr(),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              onEditingComplete: () => node.nextFocus(),
              onChanged: (emailStr) {
                context.read<SignUpBloc>().add(
                      SignUpEvent.emailChanged(emailStr),
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
              text: LocaleKeys.signUp.tr(),
              onPressed: () => context
                  .read<SignUpBloc>()
                  .add(const SignUpEvent.signUpPressed()),
            ),
            const AppSpacer.small(),
            AppLinkButton(
              text: LocaleKeys.signIn.tr(),
              onPressed: () {
                pageController.animateToPage(
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

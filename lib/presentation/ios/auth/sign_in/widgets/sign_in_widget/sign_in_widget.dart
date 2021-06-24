import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/auth/sign_in/sign_in_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/auth/sign_in/modals/forgot_password/forgot_password_modal.dart';
import 'widgets/widgets.dart';

class SignInWidget extends StatelessWidget {
  final PageController pageController;

  const SignInWidget({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        state.authFailureOrSuccess?.fold(
          (failure) {
            failure.maybeWhen(
              serverError: () => showToast(LocaleKeys.errorServer.tr()),
              invalidEmailAndPasswordCombination: () => showToast(
                  LocaleKeys.errorInvalidEmailAndPasswordCombination.tr()),
              orElse: () {},
            );
          },
          (_) {
            context.read<AuthBloc>().add(const AuthEvent
                .authCheckRequested()); // kinda double code do we need authbloc rly
            context.router.replace(const HomePageRoute());
          },
        );
      },
      builder: (context, state) {
        final node = FocusScope.of(context);
        return Column(
          children: [
            SizedBox(
              height: size70(context),
            ),
            LogoDisplayer(),
            const Spacer(
              flex: 84,
            ),
            AppTextField(
              placeholder: LocaleKeys.email.tr(),
              textInputAction: TextInputAction.next,
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
              text: LocaleKeys.signIn.tr(),
              onPressed: () => context.read<SignInBloc>().add(
                    const SignInEvent.signInPressed(),
                  ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLinkButton(
                  text: LocaleKeys.forgotPassword.tr(),
                  onPressed: () {
                    showCupertinoModalBottomSheet(
                      context: context,
                      builder: (context) => ForgotPasswordModal(),
                    );
                  },
                ),
                AppLinkButton(
                  text: LocaleKeys.signUpNow.tr(),
                  onPressed: () {
                    pageController.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                ),
              ],
            ),
            const Spacer(
              flex: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton(
                  onPressed: () => context.read<SignInBloc>().add(
                        const SignInEvent.signInWithFacebookPressed(),
                      ),
                  child: Image.asset(AppImages.fb_new),
                ),
                CupertinoButton(
                  onPressed: () => context.read<SignInBloc>().add(
                        const SignInEvent.signInWithApplePressed(),
                      ),
                  child: Image.asset(AppImages.ig_new),
                ),
                CupertinoButton(
                  onPressed: () => context.read<SignInBloc>().add(
                        const SignInEvent.signInWithGooglePressed(),
                      ),
                  child: Image.asset(AppImages.google_new),
                ),
              ],
            ),
            const Spacer(
              flex: 30,
            ),
          ],
        );
      },
    );
  }
}

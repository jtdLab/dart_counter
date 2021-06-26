import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:dart_counter/application/auth/sign_in/sign_in_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/auth/sign_in/modals/modals.dart';
import 'widgets/widgets.dart';

class SignInWidget extends StatelessWidget {
  final PageController pageController;

  const SignInWidget({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
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
            const AppSpacer.small(),
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
              flex: 5,
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
            const Spacer(),
          ],
        );
      },
    );
  }
}

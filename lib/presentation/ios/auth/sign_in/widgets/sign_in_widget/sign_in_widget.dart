import 'package:dart_counter/application/sign_in/sign_in_bloc.dart';

import 'package:dart_counter/presentation/ios/auth/sign_in/modals/modals.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SignInWidget extends StatelessWidget {
  // TODO provide it and dont pass it via constructor ?
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
            // TODO  size for diffrent size classes
            const AppSpacer.custom(
              mobileSize: ResponsiveDouble(
                small: 50,
                normal: 60,
                large: 69,
                extraLarge: 78,
              ),
            ),
            const LogoDisplayer(),
            // TODO  size for diffrent size classes
            const AppSpacer.custom(
              mobileSize: ResponsiveDouble(
                small: 96,
                normal: 110,
                large: 123,
                extraLarge: 140,
              ),
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
            if (state.isSubmitting) ...[
              SizedBox(
                width: double.infinity,
                height: size55(context),
                child: Container(
                  color: AppColors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Lottie.asset(
                      AppAnimations.loading_circle_white,
                      width: size12(context),
                      height: size12(context),
                    ),
                  ),
                ),
              )
            ] else ...[
              AppPrimaryButton(
                text: LocaleKeys.signIn.tr(),
                onPressed: () => context.read<SignInBloc>().add(
                      const SignInEvent.signInPressed(),
                    ),
              ),
            ],
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
                      builder: (context) => const ForgotPasswordFlow(),
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
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton(
                  onPressed: () => context.read<SignInBloc>().add(
                        const SignInEvent.signInWithFacebookPressed(),
                      ),
                  child: Image.asset(AppImages.fbNew),
                ),
                CupertinoButton(
                  onPressed: () => context.read<SignInBloc>().add(
                        const SignInEvent.signInWithApplePressed(),
                      ),
                  child: Image.asset(AppImages.igNew),
                ),
                CupertinoButton(
                  onPressed: () => context.read<SignInBloc>().add(
                        const SignInEvent.signInWithGooglePressed(),
                      ),
                  child: Image.asset(AppImages.googleNew),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

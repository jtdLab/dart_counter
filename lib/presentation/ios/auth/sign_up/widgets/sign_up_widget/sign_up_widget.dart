import 'package:dart_counter/application/sign_up/sign_up_bloc.dart';

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
    return BlocBuilder<SignUpBloc, SignUpState>(
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
                text: LocaleKeys.signUp.tr(),
                onPressed: () => context
                    .read<SignUpBloc>()
                    .add(const SignUpEvent.signUpPressed()),
              ),
            ],
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

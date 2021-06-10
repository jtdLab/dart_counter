import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/auth/sign_up/sign_up_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_text_field.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_link_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_spacer.dart';
import 'package:dart_counter/presentation/ios/core/widgets/logo_displayer.dart';
import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';

class SignUpForm extends StatelessWidget {
  final PageController pageController;

  const SignUpForm({Key? key, required this.pageController}) : super(key: key);

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
            SizedBox(
              height: size70(context),
            ),
            LogoDisplayer(),
            const Spacer(
              flex: 24,
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
            const AppSpacer.large(),
            AppLinkButton(
              text: LocaleKeys.signIn.tr(),
              onPressed: () {
                pageController.animateToPage(0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
            ),
            const Spacer(
              flex: 44,
            ),
          ],
        );
      },
    );
  }
}
